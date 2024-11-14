
오디오 파일 위치는 프로젝트 내 source 폴더에 있음.
ContentView.swift 와 SpatialAudioView.swift 2개의 뷰가 동시에 나오도록 함.

ContentView에선 mono 오디오를 출력. play&stop 버튼 생성해놓음.
SpatialAudioView 에선 Stereo Spatial 오디오가 앱 실행과 동시에 자동 재생되도록 함. 정지 버튼만 만들어놓음. sholdLoop 를 이용해 무한루프 audio가 가능.
