By keep tracking of the size every time a node is added or removed, size can be accessed in constant time.

Keeping a pointer to the last node in a LL will also cut down the insert last and remove last methods down to constant time. It will also cut any traversal down to n/2 if the list is doubly linked so traversal can be made forward or backward(still O(n))

The actual process of setting or inserting is constant - either changing elements or next node pointers. It is the traversal which is linear.