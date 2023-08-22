from final_control_work.Program.Classes.PackAnimals import PackAnimals


class Donkeys(PackAnimals):
    """Класс Ослы"""

    def __init__(self, name, birthday, command):
        super().__init__(name, birthday, command)

    def food(self):
        """Что ест животное"""
        pass

    def speak(self):
        """Осёл умеет подавать голос"""
        pass

    def print_animal(self):
        """Распечатать свойства животного"""
        print(f'Осёл: кличка - {self.get_name()}, '
              f'Дата рождения - {self.get_birthday()}, '
              f'Команды - {self.get_command()}')
