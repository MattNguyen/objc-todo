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
    if ((self = [super init])) {
        _todoItems = [[NSMutableArray alloc] init];
        for (int i = 0; i < [todoItems count]; i++) {
            [self addItem:todoItems[i]];
        }
    }
    return self;
}

- (id)initWithTodoItem:(NSString *)todoItem {
    if ((self = [super init])) {
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
    NSMutableArray *results = [[NSMutableArray alloc] init];
    for (int i = 0; i < [self.todoItems count]; i++) {
        TodoItem *todoItem = self.todoItems[i];
        if (!todoItem.complete) {
            [results addObject:todoItem];
        }
    }
    
    for (int i = 0; i < [results count]; i++) {
        TodoItem *todoItem = results[i];
        NSLog(@"%d) %@", i+1, todoItem.title);
    }
    
    [self logTodoItemResultsArray:results];
}

- (void)showCompletedTodoItems {
    NSLog(@"====TODOS COMPLETED====");
    NSMutableArray *results = [[NSMutableArray alloc] init];
    for (int i = 0; i < [self.todoItems count]; i++) {
        TodoItem *todoItem = self.todoItems[i];
        if (todoItem.complete) {
            [results addObject:todoItem];
        }
    }
    
    [self logTodoItemResultsArray:results];
}

- (void)logTodoItemResultsArray:(NSMutableArray *)results {
    for (int i = 0; i < [results count]; i++) {
        TodoItem *todoItem = results[i];
        NSLog(@"%d) %@", i+1, todoItem.title);
    }
}

- (void)markComplete:(int)todoNumber {
    TodoItem *todoItem = self.todoItems[todoNumber - 1];
    [todoItem markComplete];
}
@end
