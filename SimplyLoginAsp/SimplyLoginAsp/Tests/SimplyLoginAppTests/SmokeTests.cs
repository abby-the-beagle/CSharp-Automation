using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NUnit.Framework;
using System.Net;

namespace SimplyLoginAppTests
{
    /// <summary>
    /// A set of tests to verify that all pages are accessible and there are no broken links in each page.
    /// </summary>
    [TestFixture]
    public class SmokeTests
    {
        [Test]
        public void VerifyDefaultPageAccessible()
        {
            // Initialize
            String defaultUrl = "http://localhost:19946/Default.aspx";

            // Execution
            WebRequest request = WebRequest.Create(defaultUrl);
            WebResponse response = request.GetResponse();

            // Validation
            Assert.NotNull(response);
        }
    }
}
