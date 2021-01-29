GLOBAL_LIST_INIT(supermarket, list(/obj/item/assembly/prox_sensor = 5,
					/obj/item/assembly/igniter = 3,
					/obj/item/assembly/signaler = 4,
					/obj/item/wirecutters = 1,
					/obj/item/cartridge/signal = 4,
					/obj/item/stock_parts/matter_bin = 3,
					/obj/item/stock_parts/manipulator = 3,
					/obj/item/stock_parts/micro_laser = 3,
					/obj/item/stock_parts/scanning_module = 3,
					/obj/item/stock_parts/capacitor = 3))

/obj/machinery/vending/secret/
	product_ads = "Only the finest!;Have some tools.;The most robust equipment.;The finest gear in space!"
	default_price = 125
	extra_price = 100
	payment_department = NO_FREEBIES
	light_mask = "generic-light-mask"
	resistance_flags = INDESTRUCTIBLE
/obj/machinery/vending/secret/pee
	products = (/obj/item/assembly/prox_sensor = 5,
					/obj/item/assembly/igniter = 3,
					/obj/item/assembly/signaler = 4,
					/obj/item/wirecutters = 1,
					/obj/item/cartridge/signal = 4,
					/obj/item/stock_parts/matter_bin = 3,
					/obj/item/stock_parts/manipulator = 3,
					/obj/item/stock_parts/micro_laser = 3,
					/obj/item/stock_parts/scanning_module = 3,
					/obj/item/stock_parts/capacitor = 3)
/obj/item/vending_refill/assist
	machine_name = "Vendomat"
	icon_state = "refill_engi"
