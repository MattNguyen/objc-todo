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
        for (id todoItem in todoItems) {
            [self addItem:todoItem];
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
    for (TodoItem *todoItem in self.todoItems) {
        if (!todoItem.complete) {
            [results addObject:todoItem];
        }
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
    int i = 0;
    for (TodoItem *todoItem in results) {
        NSLog(@"%d) %@", i+1, todoItem.title);
        i++;
    }
    
}

- (void)markComplete:(int)todoNumber {
    TodoItem *todoItem = self.todoItems[todoNumber - 1];
    [todoItem markComplete];
}
@end
