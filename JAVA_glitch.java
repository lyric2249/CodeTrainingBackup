

public class Main 
{
	public static void main(String[] args) 
	{
		int number=1;
		System.out.println(number);
		//number=2;
		System.out.println(number);
		// \u000a number=3;
		System.out.println(number);
		/*
			\u002A\u002F number=4;
				System.out.println("범위형 주석 무효화 확인");
		// */
		System.out.println(number);
	}
}

// 1. java complier는 컴파일 프론트엔드 과정 중의 하나인 구문 분석 처리 과정에서 
// 유니코드를 먼저 인식하여 처리하므로 LF(Line Feed)에 해당하는 유니코드 000a에 따라 
// number = 3을 10번째 라인으로 떨구게 되며 주석이 무효화되는 효과가 발생한다.

// 2. 범위형 주석의 경우 002A 002F는 각각 */에 해당하기 때문에
// /* u002Au002F 는 /**/라고 작성한것과 동일해
// 주석이 닫히는 효과가 생겨 주석이 무효화되는것처럼 보이게 된다.





public class Unicode
{
	public static void main(String... args) 
	{
		\u0066or(int\u0020i:"hello world".to\u0043h\0031rArray()
		)System./*\u002A\002Fout.print((char)i);
		
		System.out.println("\n--------------------");
		
		for(int i:"hello word".toCharArray())
			System.out.print((char)i);
	}
}

		// 0066 = f
		// 0020 = space
		// 0043 = c
		// 0061 = a

*/
}}


// 적절히 응용하면 이런 코드를 작성해도 정상적으로 동작하는 것을 볼 수 있다.

public class Http
{
	public static void main (String[]args)
	{
		System.out.println("Hello");
		https: //github.com
		http:
		aa:
		System.out.println("World !");
	}
	
}

// label은 if, for, while 등을 만나지 못하면 컴파일 과정에서 무시되어 아무런 문제없이 프로그램을 실행할 수 있음.





public class Operator
{
	public static void main(String[] args)
	{
		int i = (byte)+(char)-(long)+(int)-14;
		System.out.println(i);
	}
}

// 강제 타입캐스팅과 연산자가 함께 쓰여서 헷갈릴 수 있지만
// int i = +-+-14 (또는 int i = -(-14)) 라고 쓴 것과 동일한 코드라서 아무런 문제가 없다.



public class Null
{
	static int number=42;
	
	Null getNull()
	{
		return null;
	}
	
	public static void main(String... args)
	{
		Null nil = new Null();
		System.out.println(nil.getNull().number);
	}
}







// new Null()과 getNull()은 런타임에서 가서야 실행되지만 number는 static이므로 컴파일시간에도 읽을 수 있으므로
// 12번째 줄은 System.out.println(Null.number); 와 사실상 같은 코드.
// 따라서 42가 정상 출력됨.
// 
// 참고로 해당 코드를 디컴파일해보면 System.out.println() 바깥에서 null.getNull()이 혼자서 실행되는 것을 볼 수 있다.


public class Private
{
	public static void main(String[] args) throws Exception
	{
		PrivateClass pc = new PrivateClass();
		// int id=pc.id; // pc.id 를 찾을 수 없으므로 당연히 에러 발생
		Field pcId = Private.class.getDeclaredField(name:"id"); // name 표시 좀 신기한데?
		pcId.setAccessible(true);
		pcId.setInt(pc, i:9999); //i 표시도 좀 신기한데?
		int id = (int) pcId.get(pc);
		System.out.println(id);
	}
}

class PrivateClass
{
	private final int id=27356;
}

		






// 유명한 자바해킹유형 중 하나. 컴파일시간에 제한되는 몇몇 제약사항(final 값 변경불가 등)들이 런타임에는 이미 소거되었다는 점을 이용해
// 리플렉션을 통해 바이트코드를 조작함으로 자바 제작자가 의도하지 않은 방향으로도 코드를 입맛대로 변경시킬 수 있다.



class Account
{
	final String name;
	
	public Account(String name)
	{
		this.name=name;
		if (this.name.equals("푸틴"))
		{
			throw new IllegalArgumentException("푸틴은 안돼~");
		}
	}
	
	public void transfer(int amount, String to)
	{
		System.out.printf("%s님이 %d원을 %s님에게 송급하였습니다.\n", this.name, amount, to);
	}
}

class WeirdAccount extends Account
{
	public WeirdAccount(String name) { super(name); }
	
	@Override
	protected void finalize() throws Throwable
	{
		this.transfer(amount: 100_00_000, to: "Git"); // amount랑 to 이름 좀 이상
	}
}

public class Finalize
{
	public static void main(String[] args) throws InterruptedException
	{
		Account account1 = new Account(name: "charlie");
		account1.transfer(amount: 1000, to:"Git");
		
		Account account2 = null;
		try
		{
			account2 = new WeirdAccount(name: "푸틴");
		}
		catch (Exception e)
		{
			System.out.println("푸틴은 안되야 하는데...?");
		}
		System.go();
		Thread.sleep(millis: 3000);
	}
}

// finalize(객체소멸자)를 이용해 에러를 무효화함.
// 에러가 발생하면 객체를 소멸시키는 과정과 함께, Throwable을 호출하여 프로그램이 비정상 종료되는 것으로 끝나야하나
// finalize를 오버라이딩하여 객체를 소멸시키거나 Throwable을 실행하는 작업이 아닌 다른 작업을 하도록 비정상 유도함으로써 에러를 회피하도록 하는 해킹기법 중 하나.











// 이처럼 자바의 세계는 오묘하고도 신비한 일들을 수행할 수 있다.
// 이를 적절히 활용하여 자신만이 알아볼 수 있는 유지보수가 어려운 코드를 작성하고 사내 대체불가인력이 되어 몸값을 높여보는 건 어떨까?














