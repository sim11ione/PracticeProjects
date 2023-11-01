import pygame
import numpy as np
from dokusan import generators

solved = 0
width = 550
background_color = (251, 247, 245)
original_grid_element_color = (52, 31, 151)
buffer = 5

raw_grid = np.array(list(str(generators.random_sudoku(avg_rank=150))))
grid1 = np.array(raw_grid).astype(int)
grid = grid1.reshape(9, 9)
grid_original = [[grid[x][y] for y in range(len(grid[0]))] for x in range(len(grid[0]))]

def insert(win, position, value):
    i, j = position[1], position[0]
    myfont = pygame.font.SysFont('Comic Sans MS', 35)

    if grid_original[i - 1][j - 1] == 0:
        pygame.draw.rect(win, background_color, (position[0] * 50 + buffer, position[1] * 50 + buffer, 50 - 2 * buffer, 50 - 2 * buffer))
        if 0 < value < 10:
            value_text = myfont.render(str(value), True, (0, 0, 0))
            win.blit(value_text, (position[0] * 50 + 15, position[1] * 50))
            grid[i - 1][j - 1] = value
        pygame.display.update()

def isEmpty(num):
    if(num == 0):
        return True
    return False

def isValid(position,num):
    for i in range(0,len(grid[0])):
        if(grid[position[0]][i] == num):
            return False
    for i in range(0,len(grid[0])):
        if(grid[i][position[1]]==num):
            return False
    x = position[0]//3*3
    y = position[1]//3*3

    for i in range(0,3):
        for j in range(0,3):
            if(grid[x+i][y+j] == num):
                return False
    return True
solved = 0


def solve_sudoku(grid, win):  # Accept 'win' as an argument
    global solved
    solved = 0
    myfont = pygame.font.SysFont('Comic Sans MS', 35)
    for i in range(0, len(grid[0])):
        for j in range(0, len(grid[0])):
            if (isEmpty(grid[i][j])):
                for k in range(1, 10):
                    if isValid((i, j), k):
                        grid[i][j] = k
                        pygame.draw.rect(win, background_color, (
                        (j + 1) * 50 + buffer, (i + 1) * 50 + buffer, 50 - 2 * buffer, 50 - 2 * buffer))
                        value = myfont.render(str(k), True, (0, 0, 0))
                        win.blit(value, ((j + 1) * 50 + 15, (i + 1) * 50))
                        pygame.display.update()
                        pygame.time.delay(10)

                        solve_sudoku(grid, win)  # Recursive call with 'win'

                        if (solved == 1):
                            return

                        grid[i][j] = 0
                        pygame.draw.rect(win, background_color, (
                        (j + 1) * 50 + buffer, (i + 1) * 50 + buffer, 50 - 2 * buffer, 50 - 2 * buffer))
                        pygame.display.update()
                return
    solved = 1

# Rest of your code remains the same


def draw_grid(win, grid):
    myfont = pygame.font.SysFont('Comic Sans MS', 35)
    for i in range(0, len(grid[0])):
        for j in range(0, len(grid[0])):
            value = str(grid[i][j]) if grid[i][j] != 0 else ""
            if value:
                value_text = myfont.render(value, True, original_grid_element_color)
                win.blit(value_text, ((j + 1) * 50 + 15, (i + 1) * 50))
    pygame.display.update()

def main():
    pygame.init()
    win = pygame.display.set_mode((width, width))
    pygame.display.set_caption("Sudoku")
    win.fill(background_color)

    for i in range(0, 10):
        if i % 3 == 0:
            pygame.draw.line(win, (0, 0, 0), (50 + 50 * i, 50), (50 + 50 * i, 500), 4)
            pygame.draw.line(win, (0, 0, 0), (50, 50 + 50 * i), (500, 50 + 50 * i), 4)
        pygame.draw.line(win, (0, 0, 0), (50 + 50 * i, 50), (50 + 50 * i, 500), 2)
        pygame.draw.line(win, (0, 0, 0), (50, 50 + 50 * i), (500, 50 + 50 * i), 2)

    # Display initially given numbers on the grid
    myfont = pygame.font.SysFont('Comic Sans MS', 35)
    for i in range(0, len(grid[0])):
        for j in range(0, len(grid[0])):
            value = str(grid[i][j]) if grid[i][j] != 0 else ""
            if value:
                value_text = myfont.render(value, True, original_grid_element_color)
                win.blit(value_text, ((j + 1) * 50 + 15, (i + 1) * 50))

    pygame.display.update()

    while True:
        for event in pygame.event.get():
            if event.type == pygame.MOUSEBUTTONDOWN:
                if event.button == 1:
                    pos = pygame.mouse.get_pos()
                    insert(win, (pos[0] // 50, pos[1] // 50), 1)  # Change '1' to the desired number
                elif event.button == 3:  # Right mouse button to trigger the solver
                    solve_sudoku(grid, win)  # Pass the 'win' variable
                    draw_grid(win, grid)

            if event.type == pygame.KEYDOWN:
                if 0 < int(event.unicode) < 10:
                    pos = pygame.mouse.get_pos()
                    insert(win, (pos[0] // 50, pos[1] // 50), int(event.unicode))

            if event.type == pygame.QUIT:
                pygame.quit()
                return

main()

