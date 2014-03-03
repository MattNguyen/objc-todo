//
//  TodoList.m
//  Todo
//
//  Created by Matthew Nguyen on 3/3/14.
//  Copyright (c) 2014 Matthew Nguyen. All rights reserved.
//

#import "TodoList.h"
#import "TodoItem.h"

@implementation TodoList
- (id)initWithTodoItems:(NSArray *)todoItems {
    self = [super init];
    if (self) {
        _todoItems = [[NSMutableArray alloc] init];
        for (int i = 0; i < [todoItems count]; i++) {
            [self addItem:todoItems[i]];
        }
    }
    return self;
}

- (id)initWithTodoItem:(NSString *)todoItem {
    self = [super init];
    if (self) {
        _todoItems = [[NSMutableArray alloc] init];
        [self addItem:todoItem];
    }
    return self;
}

- (void)addItem:(NSString *)title {
    TodoItem *item = [[TodoItem alloc] initWithTitle:title];
    [self.todoItems addObject:item];
}
                      
- (void)showIncompleteTodoItems {
    NSLog(@"====TODOS====");
    for (int i = 0; i < [self.todoItems count]; i++) {
        TodoItem *todoItem = self.todoItems[i];
        if (!todoItem.complete) {
            NSLog(@"%d) %@", i+1, todoItem.title);
        }
    }
}

- (void)showCompletedTodoItems {
    NSLog(@"====TODOS COMPLETED====");
    for (int i = 0; i < [self.todoItems count]; i++) {
        TodoItem *todoItem = self.todoItems[i];
        if (todoItem.complete) {
            NSLog(@"%d) %@", i+1, todoItem.title);
        }
    }
}

- (void)markComplete:(int)todoNumber {
    TodoItem *todoItem = self.todoItems[todoNumber - 1];
    [todoItem markComplete];
}
@end
