library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bram_port_selector_v1_0 is
	generic (
        DATA_WIDTH	         : integer	:= 32;
        ADDR_WIDTH	         : integer	:= 11	
	);
	port (	
        -- Master port BRAM
        master_en    : out std_logic;                                      
        master_we    : out std_logic;                               
        master_addr  : out std_logic_vector(ADDR_WIDTH-1 downto 0); 
        master_di    : out std_logic_vector(DATA_WIDTH-1 downto 0); 
        master_do    : in std_logic_vector(DATA_WIDTH-1 downto 0);
        
        -- Slave port BRAM0
        slave0_en    : in std_logic;                                      
        slave0_we    : in std_logic;                               
        slave0_addr  : in std_logic_vector(ADDR_WIDTH-1 downto 0); 
        slave0_di    : in std_logic_vector(DATA_WIDTH-1 downto 0); 
        slave0_do    : out std_logic_vector(DATA_WIDTH-1 downto 0);
        
        -- Slave port BRAM1
        slave1_en    : in std_logic;                                      
        slave1_we    : in std_logic;                               
        slave1_addr  : in std_logic_vector(ADDR_WIDTH-1 downto 0); 
        slave1_di    : in std_logic_vector(DATA_WIDTH-1 downto 0); 
        slave1_do    : out std_logic_vector(DATA_WIDTH-1 downto 0);
        
        -- Slave port BRAM2
        slave2_en    : in std_logic;                                      
        slave2_we    : in std_logic;                               
        slave2_addr  : in std_logic_vector(ADDR_WIDTH-1 downto 0); 
        slave2_di    : in std_logic_vector(DATA_WIDTH-1 downto 0); 
        slave2_do    : out std_logic_vector(DATA_WIDTH-1 downto 0);
        
        -- Slave port BRAM3
        slave3_en    : in std_logic;                                      
        slave3_we    : in std_logic;                               
        slave3_addr  : in std_logic_vector(ADDR_WIDTH-1 downto 0); 
        slave3_di    : in std_logic_vector(DATA_WIDTH-1 downto 0); 
        slave3_do    : out std_logic_vector(DATA_WIDTH-1 downto 0);
        
        -- Slave port BRAM4
        slave4_en    : in std_logic;                                      
        slave4_we    : in std_logic;                               
        slave4_addr  : in std_logic_vector(ADDR_WIDTH-1 downto 0); 
        slave4_di    : in std_logic_vector(DATA_WIDTH-1 downto 0); 
        slave4_do    : out std_logic_vector(DATA_WIDTH-1 downto 0);     
        
        -- Slave port BRAM4
        slave5_en    : in std_logic;                                      
        slave5_we    : in std_logic;                               
        slave5_addr  : in std_logic_vector(ADDR_WIDTH-1 downto 0); 
        slave5_di    : in std_logic_vector(DATA_WIDTH-1 downto 0); 
        slave5_do    : out std_logic_vector(DATA_WIDTH-1 downto 0)  
        
	);
end bram_port_selector_v1_0;

architecture arch_imp of bram_port_selector_v1_0 is
	                              
begin

    master_en         <= slave0_en or slave1_en or slave2_en or slave3_en or slave4_en or slave5_en;
    master_we         <= slave0_we when slave0_en = '1' else
                         slave1_we when slave1_en = '1' else 
                         slave2_we when slave2_en = '1' else 
                         slave3_we when slave3_en = '1' else 
                         slave4_we when slave4_en = '1' else 
                         slave5_we when slave5_en = '1' else 
                         '0';
    master_addr       <= slave0_addr when slave0_en = '1' else 
                         slave1_addr when slave1_en = '1' else 
                         slave2_addr when slave2_en = '1' else 
                         slave3_addr when slave3_en = '1' else 
                         slave4_addr when slave4_en = '1' else 
                         slave5_addr when slave5_en = '1' else 
                         (others => '0');  
    master_di         <= slave0_di when slave0_en = '1' else
                         slave1_di when slave1_en = '1' else
                         slave2_di when slave2_en = '1' else
                         slave3_di when slave3_en = '1' else
                         slave4_di when slave4_en = '1' else
                         slave5_di when slave5_en = '1' else                         
                         (others => '0'); 
    slave0_do         <= master_do;           
    slave1_do         <= master_do; 
    slave2_do         <= master_do; 
    slave3_do         <= master_do; 
    slave4_do         <= master_do;     
    slave5_do         <= master_do;     

end arch_imp;
