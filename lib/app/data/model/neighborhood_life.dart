class NeighborhoodLife {
  final String category;
  final String profileImgUri;
  final String userName;
  final String location;
  final String content;
  final String contentImgUri;
  final int commentCount;
  final int authCount;
  final String date;
  List<String>? type = [];

  NeighborhoodLife({
    required this.category,
    required this.profileImgUri,
    required this.userName,
    required this.location,
    required this.content,
    required this.contentImgUri,
    required this.commentCount,
    required this.authCount,
    required this.date,
    this.type,
  });
}

// 샘플 데이터 1
String lifeTitle = '이웃과 함께 만드는 봄 간식 지도 마음까지 따듯해지는 봄 간식을 만나보세요.';

// 샘플 데이터 2
List<NeighborhoodLife> neighborhoodLifeList = [
  NeighborhoodLife(
    category: '갤럭시버즈 무선이어폰 색상 선호도 조사',
    profileImgUri: 'https://placeimg.com/200/100/people/grayscale',
    userName: 'yoojaeseok',
    location: '좌동',
    content: '삼성 무선이어폰 신제품 버즈라이브\n'
        '색상 선호도 조사에 참여하세요!',
    contentImgUri: 'https://img.kr.news.samsung.com/kr/wp-content/uploads/2021/01/%EC%82%BC%EC%84%B1-%EA%B0%A4%EB%9F%AD%EC%8B%9C-%EB%B2%84%EC%A6%88-%ED%94%84%EB%A1%9C_3%EC%A2%85-1.jpg',
    commentCount: 11,
    authCount: 3,
    date: '15:34',
    type: ['제품', '문화', '사회'],
  ),
  NeighborhoodLife(
    category: '에어팟 프로 vs 버즈 라이브',
    profileImgUri: 'https://placeimg.com/200/100/people',
    userName: '당근토끼',
    location: '우동',
    content: '에어팟 프로와 버즈 라이브 선호도 조사에 참여하세요!',
    contentImgUri: 'https://blog.kakaocdn.net/dn/oSYOn/btqGHxwLP5J/BBbE6sXMsTz2KjryeXF4oK/img.png',
    commentCount: 2,
    authCount: 1,
    date: '10/18',
    type: ['제품', '문화'],
  ),
  NeighborhoodLife(
    category: '분실',
    profileImgUri: 'https://placeimg.com/200/100/nature/grayscale',
    userName: 'flutter',
    location: '중동',
    content: '롯데캐슬 방향으로 재래시장 앞쪽 지나 혹시 에어팟 오른쪽 주우신 분 있나요ㅜㅜ',
    contentImgUri: 'https://placeimg.com/200/100/animal/grayscale',
    commentCount: 11,
    authCount: 8,
    date: '10/15',
    type: ['문화', '사회'],
  ),
  NeighborhoodLife(
    category: '우리동네질문',
    profileImgUri: 'https://placeimg.com/200/100/any',
    userName: '구름나드리',
    location: '우동',
    content: '밤부터 새벽까지 하던 토스트 아저씨 언제 다시 오나요ㅜㅠ',
    contentImgUri: '',
    commentCount: 0,
    authCount: 7,
    date: '10/13',
    type: ['제품'],
  ),
  NeighborhoodLife(
    category: '우리동네질문',
    profileImgUri: 'https://placeimg.com/200/100/people/grayscale',
    userName: '아는형',
    location: '만덕동',
    content: '아니 이 시간에 마이크 들고 노래하는 사람은 정상인가요?',
    contentImgUri: 'https://placeimg.com/200/100/tech',
    commentCount: 11,
    authCount: 2,
    date: '10/10',
    type: ['제품', '문화', '사회'],
  ),
  NeighborhoodLife(
    category: '우리동네질문',
    profileImgUri: 'https://placeimg.com/200/100/people/grayscale',
    userName: '헬로비비',
    location: '좌동',
    content: '예민한 개도 미용할 수 있는 곳이나 동물 병원 어디 있을까요?\n'
        '내일 유기견을 데려오기로 했는데 아직 성향을 잘 몰라서 걱정이 돼요 ㅜㅜ.',
    contentImgUri: 'https://placeimg.com/200/100/tech/grayscale',
    commentCount: 11,
    authCount: 3,
    date: '10/10',
    type: ['제품', '문화', '사회'],
  ),
  NeighborhoodLife(
    category: '우리동네질문',
    profileImgUri: 'https://placeimg.com/200/100/people/grayscale',
    userName: '헬로비비',
    location: '좌동',
    content: '예민한 개도 미용할 수 있는 곳이나 동물 병원 어디 있을까요?\n'
        '내일 유기견을 데려오기로 했는데 아직 성향을 잘 몰라서 걱정이 돼요 ㅜㅜ.',
    contentImgUri: 'https://placeimg.com/200/100/tech/grayscale',
    commentCount: 11,
    authCount: 3,
    date: '10/10',
    type: ['제품', '문화', '사회'],
  ),
  NeighborhoodLife(
    category: '우리동네질문',
    profileImgUri: 'https://placeimg.com/200/100/people/grayscale',
    userName: '헬로비비',
    location: '좌동',
    content: '예민한 개도 미용할 수 있는 곳이나 동물 병원 어디 있을까요?\n'
        '내일 유기견을 데려오기로 했는데 아직 성향을 잘 몰라서 걱정이 돼요 ㅜㅜ.',
    contentImgUri: 'https://placeimg.com/200/100/tech/grayscale',
    commentCount: 11,
    authCount: 3,
    date: '10/10',
    type: ['제품', '문화', '사회'],
  ),
  NeighborhoodLife(
    category: '우리동네질문',
    profileImgUri: 'https://placeimg.com/200/100/people/grayscale',
    userName: '헬로비비',
    location: '좌동',
    content: '예민한 개도 미용할 수 있는 곳이나 동물 병원 어디 있을까요?\n'
        '내일 유기견을 데려오기로 했는데 아직 성향을 잘 몰라서 걱정이 돼요 ㅜㅜ.',
    contentImgUri: 'https://placeimg.com/200/100/tech/grayscale',
    commentCount: 11,
    authCount: 3,
    date: '10/10',
    type: ['제품', '문화', '사회'],
  ),
  NeighborhoodLife(
    category: '우리동네질문',
    profileImgUri: 'https://placeimg.com/200/100/people/grayscale',
    userName: '헬로비비',
    location: '좌동',
    content: '예민한 개도 미용할 수 있는 곳이나 동물 병원 어디 있을까요?\n'
        '내일 유기견을 데려오기로 했는데 아직 성향을 잘 몰라서 걱정이 돼요 ㅜㅜ.',
    contentImgUri: 'https://placeimg.com/200/100/tech/grayscale',
    commentCount: 11,
    authCount: 3,
    date: '10/10',
    type: ['제품', '문화', '사회'],
  ),
  NeighborhoodLife(
    category: '우리동네질문',
    profileImgUri: 'https://placeimg.com/200/100/people/grayscale',
    userName: '헬로비비',
    location: '좌동',
    content: '예민한 개도 미용할 수 있는 곳이나 동물 병원 어디 있을까요?\n'
        '내일 유기견을 데려오기로 했는데 아직 성향을 잘 몰라서 걱정이 돼요 ㅜㅜ.',
    contentImgUri: 'https://placeimg.com/200/100/tech/grayscale',
    commentCount: 11,
    authCount: 3,
    date: '10/10',
    type: ['제품', '문화', '사회'],
  ),
  NeighborhoodLife(
    category: '우리동네질문',
    profileImgUri: 'https://placeimg.com/200/100/people/grayscale',
    userName: '헬로비비',
    location: '좌동',
    content: '예민한 개도 미용할 수 있는 곳이나 동물 병원 어디 있을까요?\n'
        '내일 유기견을 데려오기로 했는데 아직 성향을 잘 몰라서 걱정이 돼요 ㅜㅜ.',
    contentImgUri: 'https://placeimg.com/200/100/tech/grayscale',
    commentCount: 11,
    authCount: 3,
    date: '10/10',
    type: ['제품', '문화', '사회'],
  ),
  NeighborhoodLife(
    category: '우리동네질문',
    profileImgUri: 'https://placeimg.com/200/100/people/grayscale',
    userName: '헬로비비',
    location: '좌동',
    content: '예민한 개도 미용할 수 있는 곳이나 동물 병원 어디 있을까요?\n'
        '내일 유기견을 데려오기로 했는데 아직 성향을 잘 몰라서 걱정이 돼요 ㅜㅜ.',
    contentImgUri: 'https://placeimg.com/200/100/tech/grayscale',
    commentCount: 11,
    authCount: 3,
    date: '10/10',
    type: ['제품', '문화', '사회'],
  ),
  NeighborhoodLife(
    category: '우리동네질문',
    profileImgUri: 'https://placeimg.com/200/100/people/grayscale',
    userName: '헬로비비',
    location: '좌동',
    content: '예민한 개도 미용할 수 있는 곳이나 동물 병원 어디 있을까요?\n'
        '내일 유기견을 데려오기로 했는데 아직 성향을 잘 몰라서 걱정이 돼요 ㅜㅜ.',
    contentImgUri: 'https://placeimg.com/200/100/tech/grayscale',
    commentCount: 11,
    authCount: 3,
    date: '10/10',
    type: ['제품', '문화', '사회'],
  ),
  NeighborhoodLife(
    category: '우리동네질문',
    profileImgUri: 'https://placeimg.com/200/100/people/grayscale',
    userName: '헬로비비',
    location: '좌동',
    content: '예민한 개도 미용할 수 있는 곳이나 동물 병원 어디 있을까요?\n'
        '내일 유기견을 데려오기로 했는데 아직 성향을 잘 몰라서 걱정이 돼요 ㅜㅜ.',
    contentImgUri: 'https://placeimg.com/200/100/tech/grayscale',
    commentCount: 11,
    authCount: 3,
    date: '10/10',
    type: ['제품', '문화', '사회'],
  ),
];
