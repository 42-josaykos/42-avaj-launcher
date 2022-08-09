package test.java.simulator;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.Test;
import main.java.simulator.Item;

public class SimulatorTest {
	@Test
	public void test() {
		Item testItem = new Item();

		assertEquals(0, testItem.getValue());
	}
}
