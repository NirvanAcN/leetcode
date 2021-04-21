import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    if (l1 == nil) {
        return l2
    } else if l2 == nil {
        return l1
    }
    var result: ListNode?
    var l1_pointer = l1
    var l2_pointer = l2
    var pointer: ListNode?
    
    while (l1_pointer != nil) || (l2_pointer != nil) {
        if l1_pointer == nil {
            if result == nil {
                result = l2_pointer
                pointer = result
            } else {
                pointer?.next = l2_pointer
                break
            }
        } else if l2_pointer == nil {
            if result == nil {
                result = l1_pointer
                pointer = result
            } else {
                pointer?.next = l1_pointer
                break
            }
        } else {
            if l1_pointer!.val < l2_pointer!.val {
                if result == nil {
                    result = l1_pointer
                    pointer = result

                } else {
                    pointer?.next = l1_pointer
                    pointer = pointer?.next
                }
                l1_pointer = l1_pointer?.next
            } else {
                if result == nil {
                    result = l2_pointer
                    pointer = result
                } else {
                    pointer?.next = l2_pointer
                    pointer = pointer?.next
                }
                l2_pointer = l2_pointer?.next
            }
        }
    }
    return result
}

var node1 = ListNode.init(1, ListNode.init(2, ListNode.init(4)))
var node2 = ListNode.init(1, ListNode.init(3, ListNode.init(4)))
var result = mergeTwoLists(node1, node2)


while (result != nil) {
    print(result?.val)
    result = result?.next
}
