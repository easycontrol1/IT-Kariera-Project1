-- Функция за обща сума за заплати за даден магазин
DELIMITER //
CREATE FUNCTION GetTotalShopSalary(input_shop_id INT)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE total_salary DECIMAL(10, 2);
    SELECT SUM(salary)
    INTO total_salary
    FROM employees
    WHERE shop_id = input_shop_id;
    RETURN IFNULL(total_salary, 0);
END //
DELIMITER ;

-- Процедура за повишаване на заплата
DELIMITER //
CREATE PROCEDURE ShowOldAndIncreaseSalary(IN role_name_input VARCHAR(50), IN percent_inc DECIMAL(5,2))
BEGIN
    SELECT e.first_name, e.last_name, e.salary AS old_salary, (e.salary + (e.salary * percent_inc / 100)) AS new_salary
    FROM employees e
    JOIN roles r ON e.role_id = r.role_id
    WHERE r.role_name = role_name_input;

    UPDATE employees e
    JOIN roles r ON e.role_id = r.role_id
    SET e.salary = e.salary + (e.salary * percent_inc / 100)
    WHERE r.role_name = role_name_input;
END //
DELIMITER ;

-- Функция за броя на служителите за даден магазин
DELIMITER //

CREATE FUNCTION GetEmployeeCount(input_shop_id INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total_emps INT;
    
    SELECT COUNT(*)
    INTO total_emps
    FROM employees
    WHERE shop_id = input_shop_id;
    
    RETURN IFNULL(total_emps, 0);
END //

DELIMITER ;