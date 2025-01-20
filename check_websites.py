import requests

def check_website_status(url):
    try:
        response = requests.get(url, timeout=5)
        if response.status_code == 200:
            return f"{url} is UP"
        else:
            return f"{url} is DOWN (Status Code: {response.status_code})"
    except requests.exceptions.RequestException as e:
        return f"{url} is DOWN ({e})"

def main():
    with open("websites.txt", "r") as file:
        websites = file.readlines()
    
    print("Checking website statuses...")
    for website in websites:
        website = website.strip()  # Remove any whitespace or newline characters
        if website:
            status = check_website_status(website)
            print(status)

if __name__ == "__main__":
    main()
