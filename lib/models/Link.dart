class Link {
  final String? name, icon, url;

  Link({
    this.name,
    this.icon,
    this.url,
  });
}

List<Link> links = [
  Link(
    name: 'Home',
    icon: 'assets/images/home.png',
    url: '/',
  ),
  Link(
    name: 'Promotion',
    icon: 'assets/images/promotion.png',
    url: '/promotion',
  ),
  Link(
    name: 'Phase',
    icon: 'assets/images/phase.png',
    url: '/phase',
  ),
  Link(
    name: 'Genology',
    icon: 'assets/images/genology.png',
    url: '/genology',
  ),
  Link(
    name: 'Transfer',
    icon: 'assets/images/transfer.png',
    url: '/transfer',
  ),
  Link(
    name: 'Profile',
    icon: 'assets/images/profile.png',
    url: '/profile',
  ),
];
