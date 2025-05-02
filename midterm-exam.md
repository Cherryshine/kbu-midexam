# 🧪 2025년 중간고사 – Git & Shell Script 실습 평가

## 📝 평가 개요

- **제출 방식**: 교수자의 GitHub 리포지토리를 Fork하여 문제 풀이 후, `main` 브랜치에 Merge한 뒤 자신의 GitHub repository 주소를 LMS에 제출  
- **시험 환경**: Debian Linux, Bash, Git, jq 설치 필수  
- **제출 마감일**: `2025-05-02T10:20:00.000+09:00`

---

## 📁 리포지토리 구조 안내

Fork 대상 리포지토리에는 다음과 같은 파일들이 포함되어 있습니다:

```
root/
├── scripts/
│   ├── count_vowels.sh     # 수정이 필요한 shell 파일
│   ├── sample.txt          # 어린왕자 영어 텍스트 (여우와의 대화 발췌)
│   ├── library.json        # jq 문제용 JSON
```

---

## 🎯 문제 및 지시사항

### ✅ 공통 지시사항

- 각 문제는 별도의 브랜치에서 작업해야 합니다.
- 브랜치 이름은 다음과 같이 고정합니다:
  - 1번 문제: `feature/vowel-fix`
  - 2번 문제: `feature/readme`
  - 3번 문제: `feature/jq`
- 각 브랜치는 `main` 브랜치에 다음 조건에 따라 병합(Merge)해야 합니다:
  - 1번, 3번 문제: **non-fast-forward merge**
  - 2번 문제: **fast-forward merge**
- 커밋 메시지는 다음과 같은 prefix를 붙이세요:
  - `[Q1]`, `[Q2]`, `[Q3]`
  - 예: `[Q1] fix: corrected vowel count logic`
- 브랜치 병합 전에는 반드시 push되어 있어야 하며, 모든 작업 결과는 `main` 브랜치에 병합되어 있어야 합니다.
- 각 브랜치에는 최소 1개의 커밋이 있어야 하며, 1번 문제는 **최소 2개의 커밋**이 있어야 합니다.
- 커밋이 너무 많을 경우 `git rebase -i`나 `squash` 등을 이용하여 정리하세요.

---

### 🧩 [Q1] Shell Script 수정 및 작성 (총 30점)

#### 설명

- `scripts/count_vowels.sh` 파일을 수정하여 `sample.txt`의 영어 모음(aeiouAEIOU) 개수를 세어 출력하도록 하세요.  
  - 대소문자 구분 없이 세어야 합니다.  
  - `bash`에서 실행 가능한 형태로 만들어야 합니다.

- `scripts/sum.sh` 파일을 새로 작성하세요. 이 파일은 아래와 같은 기능을 해야 합니다:
  - 인자로 받은 숫자들의 합계를 출력한다.  
    - 예: `./sum.sh 3 7 1` → `11`
  - 인자가 하나도 없는 경우 `"No numbers provided"` 라고 출력

#### 브랜치 이름: `feature/vowel-fix`  
#### 커밋 개수: **문제당 1개 씩**  
#### 커밋 prefix: `[Q1]`
#### 병합 방식: **non-fast-forward**

---

### 📄 [Q2] README.md 작성 (10점)

#### 설명

프로젝트 루트에 `README.md` 파일을 생성하고 다음 내용을 포함하세요:

- 본인의 이름
- 제출 날짜
- 과제 요약 (자유롭게 작성)

#### 브랜치 이름: `feature/readme`  
#### 커밋 prefix: `[Q2]`  
#### 병합 방식: **fast-forward**

---

### 🔍 [Q3] jq 문제 (20점)

#### 사용 파일: `scripts/library.json`

##### [Q3-1]
**작성 파일명**: `scripts/q3_1_available_books.sh`  
`available` 값이 `true`이고 `copies`가 2 이상인 책들의 제목(`title`)만 출력하는 jq 스크립트를 작성하세요.

##### [Q3-2]
**작성 파일명**: `scripts/q3_2_tagged_books.sh`  
`tags` 항목에 `"philosophy"` 또는 `"cosmology"`가 포함된 책들의 제목과 저자를 다음 형식으로 출력하는 jq 스크립트를 작성하세요:

```
제목 by 저자
```

예시 출력:
```
The Little Prince by Antoine de Saint-Exupéry
A Brief History of Time by Stephen Hawking
```

#### 브랜치 이름: `feature/jq`  
#### 커밋 prefix: `[Q3]`  
#### 병합 방식: **non-fast-forward**

---

## 📬 제출 방법

1. 모든 작업 결과는 `main` 브랜치에 병합되어 있어야 합니다.
2. 본인의 GitHub Repository 주소를 제출하세요.  
   예: `https://github.com/yourname/midterm-exam`
3. 제출 전 다음 사항을 반드시 확인하세요:
   - 브랜치 이름 규칙을 따랐는가?
   - 커밋 메시지에 prefix를 사용했는가?
   - 병합 방식이 문제에서 요구한 조건과 일치하는가?
   - 각 브랜치에 필요한 커밋 수를 충족했는가?
   - 병합 전에 push가 되었는가?

---

## 📊 채점 기준

| 항목                             | 점수 |
|----------------------------------|------|
| Shell Script 2개 구현 정확도    | 10점 |
| Shell Script 커밋 구성          | 5점 |
| Git 브랜치/커밋/머지 구성       | 30점 |
| README 작성                     | 5점 |
| jq 스크립트 문제 해결           | 10점 |
| 제출 기본 점수           | 40점 |
| **총점**                         | **100점** |
