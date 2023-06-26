# script to read a yaml file and print it out at json format
# Usage: python print_yml.py <yml_file>
def main():
    import yaml
    import json
    import sys
    if len(sys.argv) != 2:
        print("Usage: python print_yml.py <yml_file>")
        sys.exit(1)
    yml_file = sys.argv[1]
    with open(yml_file, 'r') as f:
        data = yaml.load(f, Loader=yaml.FullLoader)
    print(json.dumps(data, indent=2, sort_keys=True))

if __name__ == '__main__':
    main()