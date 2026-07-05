namespace SkyBridgeSolar.Models
{
    public class HomeViewModel
    {
        public List<StatItem> Stats { get; set; } = new();
        public List<ServiceItem> Services { get; set; } = new();
        public List<TestimonialItem> Testimonials { get; set; } = new();
        public List<BlogItem> Blogs { get; set; } = new();
        public List<ProcessStep> ProcessSteps { get; set; } = new();
    }

    public class StatItem
    {
        public int Value { get; set; }
        public string Suffix { get; set; } = "";
        public string Label { get; set; } = "";
    }

    public class ServiceItem
    {
        public string Icon { get; set; } = "";
        public string Title { get; set; } = "";
        public string Description { get; set; } = "";
        public string Url { get; set; } = "#";
    }

    public class TestimonialItem
    {
        public string Name { get; set; } = "";
        public string Role { get; set; } = "";
        public string Quote { get; set; } = "";
    }

    public class BlogItem
    {
        public string Title { get; set; } = "";
        public string Excerpt { get; set; } = "";
        public string Url { get; set; } = "#";
        public string ImageAlt { get; set; } = "";
    }

    public class ProcessStep
    {
        public string Number { get; set; } = "";
        public string Title { get; set; } = "";
        public string Description { get; set; } = "";
    }

    public class ContactFormModel
    {
        public string FullName { get; set; } = "";
        public string Email { get; set; } = "";
        public string Phone { get; set; } = "";
        public string City { get; set; } = "";
        public string Address { get; set; } = "";
        public string InstallsPerMonth { get; set; } = "";
        public string MarketSegment { get; set; } = "";
        public string ServiceInterested { get; set; } = "";
        public string Message { get; set; } = "";
    }
}