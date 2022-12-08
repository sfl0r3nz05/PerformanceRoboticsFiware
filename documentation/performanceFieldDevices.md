# Performance in Field Devices

## Modbus TCP communications

1. Go to ModbusTCP directory:

   ```console
   cd ~/PerformanceRoboticsFiware/ModbusTCP
   ```

2. Run the performace test considering the number of clients and server. E.g.: 32 clients x 1 server:

    > **Available options:** `1 client x 1 server`, `8 clients x 1 server`, `16 clients x 1 server` and `32 clients x 1 server`.

   ```console
   docker compose -f 1client-1server.yml up
   ```
