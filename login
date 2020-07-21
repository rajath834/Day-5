<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <script src="51.js"></script>
    class User {
    constructor(name, age,email) {
      this.name = name;
      this.age = age;
      this.email = email;
      this.luCoins = 0;
      this.courses = [];
    }

    login(){
        console.log(`${this.name} has logged in`);
        return this;
    }
    logout(){
        console.log(`${this.name} has logged out`);
        return this;
    }
    addCoins(){
        this.luCoins++;
        console.log(`${this.name} has ${this.luCoins} coins`);
        return this;
    }

    getDetails(){
    console.log(`Name is ${this.name}, email is ${this.email}, has ${this.luCoins}, in courses ${this.courses}`);
    return this;
    }


}


class Moderator extends User{
    constructor(name,age,email,role){
        super(name,age,email);
        this.role = role;
    }
    deleteUser(user){
        users = users.filter(u =>{
            return u.email != user.email; 
        })
    }

}

class Admin extends Moderator{
    addCourse(user,course){
        user.courses.push(course);
        console.log(user);
    }
    deletecourse(user,course){
        user.courses.unshift(course);
        user.courses.pop(course);
 }
}

let user1 = new User('D',25,'dilip@gmail.com')
let user2 = new User('K',24,'k@gmai.com')
let mod = new Moderator('B',24,'b@gmail.com','Moderator');
let admin = new Admin('R',25,'r@gmail.com');
let users = [user1,user2,mod,admin];




users.forEach(element => {
    console.log(element);
});

user1.login()
 user1.addCoins();
 user1.addCoins();
 user1.addCoins();
 user1.logout();
 user1.getDetails();

 user2.login().addCoins().addCoins().getDetails().logout();

 admin.addCourse(user1,'js');
 admin.addCourse(user2,'python');
    
</body>
</html>
