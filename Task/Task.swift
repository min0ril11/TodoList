import RealmSwift

class Task: Object {
    
    dynamic var id = 0
    dynamic var name = ""
    dynamic var done = false //タスクが終わったか
    dynamic var complete = false //タスクができたか
    dynamic var comment = ""
    dynamic var date = ""
    
    override class func primaryKey() -> String {
        return "id"
    }
    
    // MARK: - Publics
    convenience init(id: Int, name: String, done: Bool, comment: String, date: String) {
        self.init()
        self.id = id
        self.name = name
        self.done = done
        self.comment = comment
        self.date = date
    }
    
    //全部とってくる let tasks = Task.findAll()
    static func findAll() -> [Task] {
        let realm = RealmFactory.sharedInstance.realm()
        let checkins = realm.objects(Task)
        return (checkins.map { $0 })
    }
    
    static func findDone() -> [Task] {
        let realm = RealmFactory.sharedInstance.realm()
        let checkins = realm.objects(Task).filter("done == true")
        return (checkins.map { $0 })
    }
    
    static func findYet() -> [Task] {
        let realm = RealmFactory.sharedInstance.realm()
        let checkins = realm.objects(Task).filter("done == false")
        return (checkins.map { $0 })
    }
    
    //全部消す Task.deleteAll()
    static func deleteAll() {
        let realm = RealmFactory.sharedInstance.realm()
        do {
            try realm.write {
                realm.delete(realm.objects(Task))
            }
        } catch let error as NSError {
            print(error)
        }
    }
    
    //保存する  Task(id: Task.findAll().count+1, name: textField.text!, done: false, comment: "").save()
    func save() {
        let realm = RealmFactory.sharedInstance.realm()
        do {
            try realm.write {
                realm.add(self)
            }
        } catch let error as NSError {
            print(error)
        }
    }
    
    //更新
    func update(comment: String?, complete: Bool?) {
        let realm = RealmFactory.sharedInstance.realm()
        do {
            try realm.write {
                if let comment = comment { self.comment = comment }
                if let complete = complete { self.complete = complete }
                self.done = true
            }
        } catch let error as NSError {
            print(error)
        }
    }
    
}