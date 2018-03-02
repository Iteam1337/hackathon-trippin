class Friend {
  final String _name;

  final Map<String, String> gravatars = {
    'radu': '43e083786d44ee05b1e6ab2fa99f55d2',
    'sebastian': '80bfef931665c72fda1cd09069648bd3',
    'anders': 'fff397e622f3d6c92399ffe1c396c92c',
    'maria_c': 'e63088e3daf28b70eee0256ff274a97d',
    'alexander': '72a2002411ffd107a42cd1fb582d6ed5',
    'mats': '147291c6bde9bd3b18201d637917af97',
    'andre': '4608ff721cb06319e5a608cc6b15e368',
    'mikael': '30ebb9845a5241c95e703160f6412323',
    'kristina': '1836648ab45f9bdaae0e83dcd53e1b99',
    'jonna': '0bbad520ecfcd2e29b1f3ce9923a56b8',
    'kiwi': '3cff761e3ec51fb75110a563d86356c5',
    'andreas_i': '7bb5ac515cb193a0a339e8253c2d444c',
    'jimmy': '83694deb0cc10b7d2a5cbfc3c760e35c',
    'christian': '392444c4b0bdb69c91afffd362544266',
    'rickard': '08053b9b0035a1ad64dc9be5485f2cf5',
    'martin': 'df2dc89db476f82b895b762e638b6d22',
    'simon': '8989a9bd5bd9f24fb8cbb31ea8d40bde',
    'johanna': '5f7d0ef2c447329ada62e35577c5051e',
    'adam': '28978d4636c0e09e6e580612fe7ceb66',
    'nils': '98b50512dfeaea8a4ba9d4e3ba20eced',
    'rebecca': '523b27ce30541355db1e366676f6abfb',
    'fanny': 'fe41c9fccdfce8e717558e3695ef8630',
    'johan': '50510d83f01c1800d1aab68d02f770aa',
    'einar': '5a9204a813e8ed32bf8cd5f98f821008',
    'andreas_p': 'ce033e7f3ab90d2af24c9eb6272ce358',
    'amir': '4c2449b4a94cb6598a9171c26e3b42c1',
    '': 'ff05786643fc1945f3c62157a4df75f9',
    'hans': 'b29ee1068d3cdd7377a6badc65e8b797',
    'mattias': '38eacbe100001ef2f78023f1d3ec9b61',
    'maria_s': '90ebdee038fac0f367bcec195c2536b9',
    'rasmus': 'bb376e093cd431137de9195d3b3b414d',
    'annie': '5e81ab5d6e5b47609c9d36b01004263e',
    'mimmi': '7323b6558dc0a0a496b3cf7e00eb93af',
    'emma_klara': '60e9b847d9906fd885e07c06c966515b',
    'someone': 'af0a0a44b4a95b61df1ab559f850c3e2',
  };

  Friend(this._name);

  String get gravatarId =>
      'https://www.gravatar.com/avatar/${gravatars[_name]}.jpg?s=1000';

  String get realName =>
      _name.substring(0, 1).toUpperCase() +
      _name.replaceAll('_', ' ').substring(1);
}
