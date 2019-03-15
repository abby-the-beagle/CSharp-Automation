using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NUnit.Framework;
using OpenQA.Selenium.Firefox;
using OpenQA.Selenium.Support.UI;
using OpenQA.Selenium;

namespace SimplyLoginAppTests
{
    /// <summary>
    /// A set of tests to verify login scenarios
    /// </summary>
    [TestFixture]
    public class LoginTests
    {
        FirefoxDriver _driver;
        WebDriverWait _wait;

        [SetUp]
        public void BeforeEachTest()
        {
            _driver = new FirefoxDriver();
            _driver.Navigate().GoToUrl("http://localhost:19946/");

            // Wait for an element to load; see http://www.deanhume.com/Home/BlogPost/selenium-webdriver---wait-for-an-element-to-load/64
            _wait = new WebDriverWait(_driver, new TimeSpan(0, 0, 5));
        }

        [TearDown]
        public void AfterEachTest()
        {
            _driver.Close();
            _driver.Quit();
        }

        [Test]
        public void LoginHansel()
        {
            /// Initialize
            String username = "hansel";
            String password = "supersecret1";

            /// Execute
            // Find the login link and click it
            _driver.FindElementById("ctl10_loginLink").Click();

            // Enter username and password and click submit
            _wait.Until(d => d.FindElement(By.Id("MainContent_ctl00_UserName")));
            _driver.FindElementById("MainContent_ctl00_UserName").SendKeys(username);
            _driver.FindElementById("MainContent_ctl00_Password").SendKeys(password);
            _driver.FindElementByName("ctl00$MainContent$ctl00$ctl06").Click();
            //_driver.Manage().Timeouts().ImplicitlyWait(new TimeSpan(0, 0, 1));
            _driver.Manage().Timeouts().ImplicitWait = new TimeSpan(0, 0, 1);

            /// Validate
            _wait.Until(d => d.FindElement(By.ClassName("username")));
            String observedUsername = _driver.FindElementByClassName("username").Text;
            Assert.AreEqual(username, observedUsername);
        }
    }
}
