using System.Net.Http;
using System.Net.Http.Formatting;
using System.Threading.Tasks;
using System.Web.Http;
using SkyWalking.AspNet;

namespace SkyWalking.Sample.AspNet.Controllers
{
    public class ValuesController : ApiController
    {
        public async Task<IHttpActionResult> Get()
        {
            var httpClient = new HttpClient(new HttpTracingHandler());
            var values = await httpClient.GetStringAsync("http://testlocal.hzfanews.com:8801/fanews/usermanage/User/test");
            return Json(values);
        }

        public async Task<IHttpActionResult> Get(int id)
        {
            var httpClient = new HttpClient(new HttpTracingHandler());
            var values = await httpClient.PostAsync("http://localhost:6768/api/values",new Book { Id=100111,Title="Get1111"},new JsonMediaTypeFormatter());
            if(values!=null)
            {
                var content = values.Content;
                var str=await content.ReadAsStringAsync();
                return Json(str);
            }
            return null;
        }

        public async Task<IHttpActionResult> Post(Book model)
        {
            await Task.Yield();
            return Json(model);
        }
    }

    public class Book
    {
        public int Id { set; get; }
        public string Title { set; get; }
    }

}