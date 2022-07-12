import UIKit

//===================Main and Global Queues===================


// you don't want too call this sync or it will freeze the main thread
DispatchQueue.main.async {
    print("executing on a main que thread: ", Thread.current)
}
print("ALSO executing on a main que thread: ", Thread.current)

// this is normally the best option
DispatchQueue.global().async {
    print("executing on a global que thread: ", Thread.current)
}




//===================Custom Queues===================


// label is used for error handling and trouble shooting
// attributes can be used to determine if work batches can be executed concurrently or not
//let que = DispatchQueue(label: "Demo.DispatchQue.demoQue", attributes: .concurrent)
//
//// prints the given string 10 thousand times
//func printTest(c:String) {
//    for _ in 1...10000 {
//        print(c, terminator: "")
//    }
//}
//
//
//print("main thread: \(Thread.current)")
//que.async {
//    // sets the name of our current thread
//    Thread.current.name = "Thread 1"
//    print ("============= Start OF Que 1 \(Thread.current) =============")
//
//    printTest(c:"1")
//
//    print ("============= End OF Que 1 =============")
//}
//
//que.async {
//    Thread.current.name = "Thread B"
//    print ("============= Start OF Que 2 \(Thread.current) =============")
//
//    printTest(c:"B")
//
//    print ("============= End OF Que 2 =============")
//}
//
//que.async {
//    Thread.current.name = "Thread 3"
//    print ("============= Start OF Que 3 \(Thread.current) =============")
//
//    printTest(c:"3")
//
//    print ("============= End OF Que 3 =============")
//}
//
//printTest(c:"@")




//===================Quality Of Service===================


// remove the qos and D will appear less often during other threads because it is set to background priority
//let que2 = DispatchQueue(label: "Demo.DispatchQue.demoQue2",qos: .background, attributes: .concurrent)
//
//que2.async {
//    Thread.current.name = "Thread D"
//    print ("============= Start OF Que D \(Thread.current) =============")
//
//    printTest(c:"D")
//
//    print ("============= End OF Que D =============")
//}
