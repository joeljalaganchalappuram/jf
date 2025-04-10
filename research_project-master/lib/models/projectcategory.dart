enum ProjectCategory {
  ai(
      title: "Artificial Intelligence",
      description: " Cutting edge research on AI and ML",
      image: "category-ai.webp"),
  cybersecurity(
      title: "Cyber Security",
      description: "Research on recent trends in Cyber Security",
      image: "category-cs.png"),
  wn(
      title: "Wireless Networks",
      description: "Research based on wireless networks and communication",
      image: "category-wn.webp"),
  robotics(
      title: "Robotics",
      description: "Research based on AI and Robotics",
      image: "category-robotics.png");

  const ProjectCategory(
      {required this.title, required this.description, required this.image});
  final String title;
  final String description;
  final String image;
}
