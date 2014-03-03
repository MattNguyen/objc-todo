//
//  main.m
//  Todo
//
//  Created by Matthew Nguyen on 3/3/14.
//  Copyright (c) 2014 Matthew Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TodoItem.h"
#import "TodoList.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSArray *newTodoItems = @[@"do shit", @"do more shit", @"still more shit to do"];
        TodoList *myTodoList = [[TodoList alloc] initWithTodoItems:newTodoItems];
        [myTodoList showIncompleteTodoItems];
        [myTodoList markComplete:1];
        [myTodoList showIncompleteTodoItems];
        [myTodoList showCompletedTodoItems];
    }
    return 0;
}

