from final_control_work.Program.Classes.Pets import Pets


class Humsters(Pets):
    """Класс хомяки"""

    def __init__(self, name, birthday, command):
        super().__init__(name, birthday, command)

    def food(self):
        """Что ест животное"""
        pass

    def speak(self):
        """Хомяк умеет подавать голос"""
        pass

    def print_animal(self):
        """Распечатать свойства животного"""
        print(f'Хомяк: кличка - {self.get_name()}, '
              f'Дата рождения - {self.get_birthday()}, '
              f'Команды - {self.get_command()}')
