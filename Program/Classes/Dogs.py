import Pets


class Dogs(Pets):
    """Класс собаки"""

    def __init__(self, name, birthday, command):
        super().__init__(name, birthday, command)

    def food(self):
        """Что ест животное"""
        pass

    def speak(self):
        """Собака умеет подавать голос"""
        pass

    def print_animal(self):
        """Распечатать свойства животного"""
        print(f'Собака: кличка - {self.get_name()}, '
              f'Дата рождения - {self.get_birthday()}, '
              f'Команды - {self.get_command()}')
