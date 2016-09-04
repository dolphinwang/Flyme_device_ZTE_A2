.class public final Lcom/zte/mifavor/widget/ChineseCalendar;
.super Ljava/util/GregorianCalendar;
.source "ChineseCalendar.java"


# static fields
.field public static final CHINESE_DATE:I = 0x323

.field public static final CHINESE_EARTHLY_BRANCH:I = 0x327

.field public static final CHINESE_HEAVENLY_STEM:I = 0x326

.field public static final CHINESE_MONTH:I = 0x322

.field public static final CHINESE_PRINCIPLE_TERM:I = 0x325

.field public static final CHINESE_SECTIONAL_TERM:I = 0x324

.field public static final CHINESE_TERM_OR_DATE:I = 0x378

.field public static final CHINESE_YEAR:I = 0x321

.field public static final CHINESE_ZODIAC:I = 0x328

.field private static final animalNames:[Ljava/lang/String;

.field private static final baseChineseDate:I = 0xb

.field private static final baseChineseMonth:I = 0xb

.field private static final baseChineseYear:I = 0x76c

.field private static final baseDate:I = 0x1

.field private static final baseIndex:I = 0x0

.field private static final baseMonth:I = 0x1

.field private static final baseYear:I = 0x76d

.field private static final bigLeapMonthYears:[I

.field private static final branchNames:[Ljava/lang/String;

.field private static final chineseDateNames:[Ljava/lang/String;

.field private static final chineseMonthNames:[Ljava/lang/String;

.field private static final chineseMonths:[C

.field private static final chineseWeekNames:[Ljava/lang/String;

.field private static final daysInGregorianMonth:[C

.field private static final principleTermMap:[[C

.field private static final principleTermNames:[Ljava/lang/String;

.field private static final principleTermYear:[[C

.field private static final sectionalTermMap:[[C

.field private static final sectionalTermNames:[Ljava/lang/String;

.field private static final sectionalTermYear:[[C

.field private static final serialVersionUID:J = 0x8L

.field private static final stemNames:[Ljava/lang/String;


# instance fields
.field private areChineseFieldsComputed:Z

.field private areSolarTermsComputed:Z

.field private chineseDate:I

.field private chineseMonth:I

.field private chineseYear:I

.field private lastSetChinese:Z

.field private principleTerm:I

.field private sectionalTerm:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x7

    const/16 v5, 0x1d

    const/16 v4, 0x8

    const/16 v3, 0x9

    .line 729
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const-string v2, "\u661f\u671f\u65e5"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u661f\u671f\u4e00"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u661f\u671f\u4e8c"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u661f\u671f\u4e09"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u661f\u671f\u56db"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u661f\u671f\u4e94"

    aput-object v2, v0, v1

    const-string v1, "\u661f\u671f\u516d"

    aput-object v1, v0, v6

    sput-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseWeekNames:[Ljava/lang/String;

    .line 731
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const-string v2, "\u6b63"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u4e8c"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u4e09"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u56db"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u4e94"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u516d"

    aput-object v2, v0, v1

    const-string v1, "\u4e03"

    aput-object v1, v0, v6

    const-string v1, "\u516b"

    aput-object v1, v0, v4

    const-string v1, "\u4e5d"

    aput-object v1, v0, v3

    const/16 v1, 0xa

    const-string v2, "\u5341"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u5341\u4e00"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u5341\u4e8c"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonthNames:[Ljava/lang/String;

    .line 733
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const-string v2, "\u521d\u4e00"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u521d\u4e8c"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u521d\u4e09"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u521d\u56db"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u521d\u4e94"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u521d\u516d"

    aput-object v2, v0, v1

    const-string v1, "\u521d\u4e03"

    aput-object v1, v0, v6

    const-string v1, "\u521d\u516b"

    aput-object v1, v0, v4

    const-string v1, "\u521d\u4e5d"

    aput-object v1, v0, v3

    const/16 v1, 0xa

    const-string v2, "\u521d\u5341"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u5341\u4e00"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u5341\u4e8c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u5341\u4e09"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u5341\u56db"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u5341\u4e94"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u5341\u516d"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u5341\u4e03"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u5341\u516b"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u5341\u4e5d"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u4e8c\u5341"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u5eff\u4e00"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u5eff\u4e8c"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u5eff\u4e09"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u5eff\u56db"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u5eff\u4e94"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u5eff\u516d"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u5eff\u4e03"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\u5eff\u516b"

    aput-object v2, v0, v1

    const-string v1, "\u5eff\u4e5d"

    aput-object v1, v0, v5

    const/16 v1, 0x1e

    const-string v2, "\u4e09\u5341"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDateNames:[Ljava/lang/String;

    .line 737
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u5927\u5bd2"

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const-string v2, "\u96e8\u6c34"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u6625\u5206"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u8c37\u96e8"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u590f\u6ee1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u590f\u81f3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u5927\u6691"

    aput-object v2, v0, v1

    const-string v1, "\u5904\u6691"

    aput-object v1, v0, v6

    const-string v1, "\u79cb\u5206"

    aput-object v1, v0, v4

    const-string v1, "\u971c\u964d"

    aput-object v1, v0, v3

    const/16 v1, 0xa

    const-string v2, "\u5c0f\u96ea"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u51ac\u81f3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->principleTermNames:[Ljava/lang/String;

    .line 739
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u5c0f\u5bd2"

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const-string v2, "\u7acb\u6625"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u60ca\u86f0"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u6e05\u660e"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u7acb\u590f"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u8292\u79cd"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u5c0f\u6691"

    aput-object v2, v0, v1

    const-string v1, "\u7acb\u79cb"

    aput-object v1, v0, v6

    const-string v1, "\u767d\u9732"

    aput-object v1, v0, v4

    const-string v1, "\u5bd2\u9732"

    aput-object v1, v0, v3

    const/16 v1, 0xa

    const-string v2, "\u7acb\u51ac"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u5927\u96ea"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->sectionalTermNames:[Ljava/lang/String;

    .line 741
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const-string v2, "\u7532"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u4e59"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u4e19"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u4e01"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u620a"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u5df1"

    aput-object v2, v0, v1

    const-string v1, "\u5e9a"

    aput-object v1, v0, v6

    const-string v1, "\u8f9b"

    aput-object v1, v0, v4

    const-string v1, "\u58ec"

    aput-object v1, v0, v3

    const/16 v1, 0xa

    const-string v2, "\u7678"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->stemNames:[Ljava/lang/String;

    .line 743
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const-string v2, "\u5b50"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u4e11"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u5bc5"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u536f"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u8fb0"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u5df3"

    aput-object v2, v0, v1

    const-string v1, "\u5348"

    aput-object v1, v0, v6

    const-string v1, "\u672a"

    aput-object v1, v0, v4

    const-string v1, "\u7533"

    aput-object v1, v0, v3

    const/16 v1, 0xa

    const-string v2, "\u9149"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u620c"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u4ea5"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->branchNames:[Ljava/lang/String;

    .line 745
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const-string v2, "\u9f20"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u725b"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u864e"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u5154"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u9f99"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u86c7"

    aput-object v2, v0, v1

    const-string v1, "\u9a6c"

    aput-object v1, v0, v6

    const-string v1, "\u7f8a"

    aput-object v1, v0, v4

    const-string v1, "\u7334"

    aput-object v1, v0, v3

    const/16 v1, 0xa

    const-string v2, "\u9e21"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u72d7"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u732a"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->animalNames:[Ljava/lang/String;

    .line 748
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->bigLeapMonthYears:[I

    .line 750
    const/16 v0, 0xc

    new-array v0, v0, [[C

    const/16 v1, 0x1c

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const/16 v2, 0x1c

    new-array v2, v2, [C

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v5, [C

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v5, [C

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v5, [C

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x21

    new-array v2, v2, [C

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v5, [C

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v1, v1, [C

    fill-array-data v1, :array_8

    aput-object v1, v0, v6

    new-array v1, v5, [C

    fill-array-data v1, :array_9

    aput-object v1, v0, v4

    new-array v1, v5, [C

    fill-array-data v1, :array_a

    aput-object v1, v0, v3

    const/16 v1, 0xa

    new-array v2, v5, [C

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v5, [C

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->sectionalTermMap:[[C

    .line 775
    const/16 v0, 0xc

    new-array v0, v0, [[C

    new-array v1, v3, [C

    fill-array-data v1, :array_d

    aput-object v1, v0, v7

    const/4 v1, 0x1

    new-array v2, v3, [C

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [C

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [C

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [C

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [C

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [C

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    new-array v1, v3, [C

    fill-array-data v1, :array_14

    aput-object v1, v0, v6

    new-array v1, v3, [C

    fill-array-data v1, :array_15

    aput-object v1, v0, v4

    new-array v1, v3, [C

    fill-array-data v1, :array_16

    aput-object v1, v0, v3

    const/16 v1, 0xa

    new-array v2, v3, [C

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [C

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->sectionalTermYear:[[C

    .line 788
    const/16 v0, 0xc

    new-array v0, v0, [[C

    const/16 v1, 0x1c

    new-array v1, v1, [C

    fill-array-data v1, :array_19

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const/16 v2, 0x1c

    new-array v2, v2, [C

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v5, [C

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v5, [C

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v5, [C

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v5, [C

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v5, [C

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    new-array v1, v5, [C

    fill-array-data v1, :array_20

    aput-object v1, v0, v6

    new-array v1, v5, [C

    fill-array-data v1, :array_21

    aput-object v1, v0, v4

    new-array v1, v5, [C

    fill-array-data v1, :array_22

    aput-object v1, v0, v3

    const/16 v1, 0xa

    new-array v2, v5, [C

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v5, [C

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->principleTermMap:[[C

    .line 813
    const/16 v0, 0xc

    new-array v0, v0, [[C

    new-array v1, v6, [C

    fill-array-data v1, :array_25

    aput-object v1, v0, v7

    const/4 v1, 0x1

    new-array v2, v6, [C

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v4, [C

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v4, [C

    fill-array-data v2, :array_28

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v4, [C

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v4, [C

    fill-array-data v2, :array_2a

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [C

    fill-array-data v2, :array_2b

    aput-object v2, v0, v1

    new-array v1, v4, [C

    fill-array-data v1, :array_2c

    aput-object v1, v0, v6

    new-array v1, v4, [C

    fill-array-data v1, :array_2d

    aput-object v1, v0, v4

    new-array v1, v4, [C

    fill-array-data v1, :array_2e

    aput-object v1, v0, v3

    const/16 v1, 0xa

    new-array v2, v4, [C

    fill-array-data v2, :array_2f

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v4, [C

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->principleTermYear:[[C

    .line 827
    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_31

    sput-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInGregorianMonth:[C

    .line 829
    const/16 v0, 0x192

    new-array v0, v0, [C

    fill-array-data v0, :array_32

    sput-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonths:[C

    return-void

    .line 748
    :array_0
    .array-data 4
        0x6
        0xe
        0x13
        0x19
        0x21
        0x24
        0x26
        0x29
        0x2c
        0x34
        0x37
        0x4f
        0x75
        0x88
        0x93
        0x96
        0x9b
        0x9e
        0xb9
        0xc1
    .end array-data

    .line 750
    :array_1
    .array-data 2
        0x7s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x5s
        0x6s
        0x6s
        0x6s
        0x5s
        0x5s
        0x6s
        0x6s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x4s
        0x5s
        0x5s
    .end array-data

    :array_2
    .array-data 2
        0x5s
        0x4s
        0x5s
        0x5s
        0x5s
        0x4s
        0x4s
        0x5s
        0x5s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x3s
        0x4s
        0x4s
        0x4s
        0x3s
        0x3s
        0x4s
        0x4s
        0x3s
        0x3s
        0x3s
    .end array-data

    :array_3
    .array-data 2
        0x6s
        0x6s
        0x6s
        0x7s
        0x6s
        0x6s
        0x6s
        0x6s
        0x5s
        0x6s
        0x6s
        0x6s
        0x5s
        0x5s
        0x6s
        0x6s
        0x5s
        0x5s
        0x5s
        0x6s
        0x5s
        0x5s
        0x5s
        0x5s
        0x4s
        0x5s
        0x5s
        0x5s
        0x5s
    .end array-data

    nop

    :array_4
    .array-data 2
        0x5s
        0x5s
        0x6s
        0x6s
        0x5s
        0x5s
        0x5s
        0x6s
        0x5s
        0x5s
        0x5s
        0x5s
        0x4s
        0x5s
        0x5s
        0x5s
        0x4s
        0x4s
        0x5s
        0x5s
        0x4s
        0x4s
        0x4s
        0x5s
        0x4s
        0x4s
        0x4s
        0x4s
        0x5s
    .end array-data

    nop

    :array_5
    .array-data 2
        0x6s
        0x6s
        0x6s
        0x7s
        0x6s
        0x6s
        0x6s
        0x6s
        0x5s
        0x6s
        0x6s
        0x6s
        0x5s
        0x5s
        0x6s
        0x6s
        0x5s
        0x5s
        0x5s
        0x6s
        0x5s
        0x5s
        0x5s
        0x5s
        0x4s
        0x5s
        0x5s
        0x5s
        0x5s
    .end array-data

    nop

    :array_6
    .array-data 2
        0x6s
        0x6s
        0x7s
        0x7s
        0x6s
        0x6s
        0x6s
        0x7s
        0x6s
        0x6s
        0x6s
        0x6s
        0x5s
        0x6s
        0x6s
        0x6s
        0x5s
        0x5s
        0x6s
        0x6s
        0x5s
        0x5s
        0x5s
        0x6s
        0x5s
        0x5s
        0x5s
        0x5s
        0x4s
        0x5s
        0x5s
        0x5s
        0x5s
    .end array-data

    nop

    :array_7
    .array-data 2
        0x7s
        0x8s
        0x8s
        0x8s
        0x7s
        0x7s
        0x8s
        0x8s
        0x7s
        0x7s
        0x7s
        0x8s
        0x7s
        0x7s
        0x7s
        0x7s
        0x6s
        0x7s
        0x7s
        0x7s
        0x6s
        0x6s
        0x7s
        0x7s
        0x6s
        0x6s
        0x6s
        0x7s
        0x7s
    .end array-data

    nop

    :array_8
    .array-data 2
        0x8s
        0x8s
        0x8s
        0x9s
        0x8s
        0x8s
        0x8s
        0x8s
        0x7s
        0x8s
        0x8s
        0x8s
        0x7s
        0x7s
        0x8s
        0x8s
        0x7s
        0x7s
        0x7s
        0x8s
        0x7s
        0x7s
        0x7s
        0x7s
        0x6s
        0x7s
        0x7s
        0x7s
        0x6s
        0x6s
        0x7s
        0x7s
        0x7s
    .end array-data

    nop

    :array_9
    .array-data 2
        0x8s
        0x8s
        0x8s
        0x9s
        0x8s
        0x8s
        0x8s
        0x8s
        0x7s
        0x8s
        0x8s
        0x8s
        0x7s
        0x7s
        0x8s
        0x8s
        0x7s
        0x7s
        0x7s
        0x8s
        0x7s
        0x7s
        0x7s
        0x7s
        0x6s
        0x7s
        0x7s
        0x7s
        0x7s
    .end array-data

    nop

    :array_a
    .array-data 2
        0x9s
        0x9s
        0x9s
        0x9s
        0x8s
        0x9s
        0x9s
        0x9s
        0x8s
        0x8s
        0x9s
        0x9s
        0x8s
        0x8s
        0x8s
        0x9s
        0x8s
        0x8s
        0x8s
        0x8s
        0x7s
        0x8s
        0x8s
        0x8s
        0x7s
        0x7s
        0x8s
        0x8s
        0x8s
    .end array-data

    nop

    :array_b
    .array-data 2
        0x8s
        0x8s
        0x8s
        0x8s
        0x7s
        0x8s
        0x8s
        0x8s
        0x7s
        0x7s
        0x8s
        0x8s
        0x7s
        0x7s
        0x7s
        0x8s
        0x7s
        0x7s
        0x7s
        0x7s
        0x6s
        0x7s
        0x7s
        0x7s
        0x6s
        0x6s
        0x7s
        0x7s
        0x7s
    .end array-data

    nop

    :array_c
    .array-data 2
        0x7s
        0x8s
        0x8s
        0x8s
        0x7s
        0x7s
        0x8s
        0x8s
        0x7s
        0x7s
        0x7s
        0x8s
        0x7s
        0x7s
        0x7s
        0x7s
        0x6s
        0x7s
        0x7s
        0x7s
        0x6s
        0x6s
        0x7s
        0x7s
        0x6s
        0x6s
        0x6s
        0x7s
        0x7s
    .end array-data

    .line 775
    nop

    :array_d
    .array-data 2
        0xds
        0x31s
        0x55s
        0x75s
        0x95s
        0xb9s
        0xc9s
        0xfas
        0xfas
    .end array-data

    nop

    :array_e
    .array-data 2
        0xds
        0x2ds
        0x51s
        0x75s
        0x95s
        0xb9s
        0xc9s
        0xfas
        0xfas
    .end array-data

    nop

    :array_f
    .array-data 2
        0xds
        0x30s
        0x54s
        0x70s
        0x94s
        0xb8s
        0xc8s
        0xc9s
        0xfas
    .end array-data

    nop

    :array_10
    .array-data 2
        0xds
        0x2ds
        0x4cs
        0x6cs
        0x8cs
        0xacs
        0xc8s
        0xc9s
        0xfas
    .end array-data

    nop

    :array_11
    .array-data 2
        0xds
        0x2cs
        0x48s
        0x68s
        0x84s
        0xa8s
        0xc8s
        0xc9s
        0xfas
    .end array-data

    nop

    :array_12
    .array-data 2
        0x5s
        0x21s
        0x44s
        0x60s
        0x7cs
        0x98s
        0xbcs
        0xc8s
        0xc9s
    .end array-data

    nop

    :array_13
    .array-data 2
        0x1ds
        0x39s
        0x55s
        0x78s
        0x94s
        0xb0s
        0xc8s
        0xc9s
        0xfas
    .end array-data

    nop

    :array_14
    .array-data 2
        0xds
        0x30s
        0x4cs
        0x68s
        0x84s
        0xa8s
        0xc4s
        0xc8s
        0xc9s
    .end array-data

    nop

    :array_15
    .array-data 2
        0x19s
        0x3cs
        0x58s
        0x78s
        0x94s
        0xb8s
        0xc8s
        0xc9s
        0xfas
    .end array-data

    nop

    :array_16
    .array-data 2
        0x10s
        0x2cs
        0x4cs
        0x6cs
        0x90s
        0xacs
        0xc8s
        0xc9s
        0xfas
    .end array-data

    nop

    :array_17
    .array-data 2
        0x1cs
        0x3cs
        0x5cs
        0x7cs
        0xa0s
        0xc0s
        0xc8s
        0xc9s
        0xfas
    .end array-data

    nop

    :array_18
    .array-data 2
        0x11s
        0x35s
        0x55s
        0x7cs
        0x9cs
        0xbcs
        0xc8s
        0xc9s
        0xfas
    .end array-data

    .line 788
    nop

    :array_19
    .array-data 2
        0x15s
        0x15s
        0x15s
        0x15s
        0x15s
        0x14s
        0x15s
        0x15s
        0x15s
        0x14s
        0x14s
        0x15s
        0x15s
        0x14s
        0x14s
        0x14s
        0x14s
        0x14s
        0x14s
        0x14s
        0x14s
        0x13s
        0x14s
        0x14s
        0x14s
        0x13s
        0x13s
        0x14s
    .end array-data

    :array_1a
    .array-data 2
        0x14s
        0x13s
        0x13s
        0x14s
        0x14s
        0x13s
        0x13s
        0x13s
        0x13s
        0x13s
        0x13s
        0x13s
        0x13s
        0x12s
        0x13s
        0x13s
        0x13s
        0x12s
        0x12s
        0x13s
        0x13s
        0x12s
        0x12s
        0x12s
        0x12s
        0x12s
        0x12s
        0x12s
    .end array-data

    :array_1b
    .array-data 2
        0x15s
        0x15s
        0x15s
        0x16s
        0x15s
        0x15s
        0x15s
        0x15s
        0x14s
        0x15s
        0x15s
        0x15s
        0x14s
        0x14s
        0x15s
        0x15s
        0x14s
        0x14s
        0x14s
        0x15s
        0x14s
        0x14s
        0x14s
        0x14s
        0x13s
        0x14s
        0x14s
        0x14s
        0x14s
    .end array-data

    nop

    :array_1c
    .array-data 2
        0x14s
        0x15s
        0x15s
        0x15s
        0x14s
        0x14s
        0x15s
        0x15s
        0x14s
        0x14s
        0x14s
        0x15s
        0x14s
        0x14s
        0x14s
        0x14s
        0x13s
        0x14s
        0x14s
        0x14s
        0x13s
        0x13s
        0x14s
        0x14s
        0x13s
        0x13s
        0x13s
        0x14s
        0x14s
    .end array-data

    nop

    :array_1d
    .array-data 2
        0x15s
        0x16s
        0x16s
        0x16s
        0x15s
        0x15s
        0x16s
        0x16s
        0x15s
        0x15s
        0x15s
        0x16s
        0x15s
        0x15s
        0x15s
        0x15s
        0x14s
        0x15s
        0x15s
        0x15s
        0x14s
        0x14s
        0x15s
        0x15s
        0x14s
        0x14s
        0x14s
        0x15s
        0x15s
    .end array-data

    nop

    :array_1e
    .array-data 2
        0x16s
        0x16s
        0x16s
        0x16s
        0x15s
        0x16s
        0x16s
        0x16s
        0x15s
        0x15s
        0x16s
        0x16s
        0x15s
        0x15s
        0x15s
        0x16s
        0x15s
        0x15s
        0x15s
        0x15s
        0x14s
        0x15s
        0x15s
        0x15s
        0x14s
        0x14s
        0x15s
        0x15s
        0x15s
    .end array-data

    nop

    :array_1f
    .array-data 2
        0x17s
        0x17s
        0x18s
        0x18s
        0x17s
        0x17s
        0x17s
        0x18s
        0x17s
        0x17s
        0x17s
        0x17s
        0x16s
        0x17s
        0x17s
        0x17s
        0x16s
        0x16s
        0x17s
        0x17s
        0x16s
        0x16s
        0x16s
        0x17s
        0x16s
        0x16s
        0x16s
        0x16s
        0x17s
    .end array-data

    nop

    :array_20
    .array-data 2
        0x17s
        0x18s
        0x18s
        0x18s
        0x17s
        0x17s
        0x18s
        0x18s
        0x17s
        0x17s
        0x17s
        0x18s
        0x17s
        0x17s
        0x17s
        0x17s
        0x16s
        0x17s
        0x17s
        0x17s
        0x16s
        0x16s
        0x17s
        0x17s
        0x16s
        0x16s
        0x16s
        0x17s
        0x17s
    .end array-data

    nop

    :array_21
    .array-data 2
        0x17s
        0x18s
        0x18s
        0x18s
        0x17s
        0x17s
        0x18s
        0x18s
        0x17s
        0x17s
        0x17s
        0x18s
        0x17s
        0x17s
        0x17s
        0x17s
        0x16s
        0x17s
        0x17s
        0x17s
        0x16s
        0x16s
        0x17s
        0x17s
        0x16s
        0x16s
        0x16s
        0x17s
        0x17s
    .end array-data

    nop

    :array_22
    .array-data 2
        0x18s
        0x18s
        0x18s
        0x18s
        0x17s
        0x18s
        0x18s
        0x18s
        0x17s
        0x17s
        0x18s
        0x18s
        0x17s
        0x17s
        0x17s
        0x18s
        0x17s
        0x17s
        0x17s
        0x17s
        0x16s
        0x17s
        0x17s
        0x17s
        0x16s
        0x16s
        0x17s
        0x17s
        0x17s
    .end array-data

    nop

    :array_23
    .array-data 2
        0x17s
        0x17s
        0x17s
        0x17s
        0x16s
        0x17s
        0x17s
        0x17s
        0x16s
        0x16s
        0x17s
        0x17s
        0x16s
        0x16s
        0x16s
        0x17s
        0x16s
        0x16s
        0x16s
        0x16s
        0x15s
        0x16s
        0x16s
        0x16s
        0x15s
        0x15s
        0x16s
        0x16s
        0x16s
    .end array-data

    nop

    :array_24
    .array-data 2
        0x16s
        0x16s
        0x17s
        0x17s
        0x16s
        0x16s
        0x16s
        0x17s
        0x16s
        0x16s
        0x16s
        0x16s
        0x15s
        0x16s
        0x16s
        0x16s
        0x15s
        0x15s
        0x16s
        0x16s
        0x15s
        0x15s
        0x15s
        0x16s
        0x15s
        0x15s
        0x15s
        0x15s
        0x16s
    .end array-data

    .line 813
    nop

    :array_25
    .array-data 2
        0xds
        0x2ds
        0x51s
        0x71s
        0x95s
        0xb9s
        0xc9s
    .end array-data

    nop

    :array_26
    .array-data 2
        0x15s
        0x39s
        0x5ds
        0x7ds
        0xa1s
        0xc1s
        0xc9s
    .end array-data

    nop

    :array_27
    .array-data 2
        0x15s
        0x38s
        0x58s
        0x78s
        0x98s
        0xbcs
        0xc8s
        0xc9s
    .end array-data

    :array_28
    .array-data 2
        0x15s
        0x31s
        0x51s
        0x74s
        0x90s
        0xb0s
        0xc8s
        0xc9s
    .end array-data

    :array_29
    .array-data 2
        0x11s
        0x31s
        0x4ds
        0x70s
        0x8cs
        0xa8s
        0xc8s
        0xc9s
    .end array-data

    :array_2a
    .array-data 2
        0x1cs
        0x3cs
        0x58s
        0x74s
        0x94s
        0xb4s
        0xc8s
        0xc9s
    .end array-data

    :array_2b
    .array-data 2
        0x19s
        0x35s
        0x54s
        0x70s
        0x90s
        0xacs
        0xc8s
        0xc9s
    .end array-data

    :array_2c
    .array-data 2
        0x1ds
        0x39s
        0x59s
        0x78s
        0x94s
        0xb4s
        0xc8s
        0xc9s
    .end array-data

    :array_2d
    .array-data 2
        0x11s
        0x2ds
        0x49s
        0x6cs
        0x8cs
        0xa8s
        0xc8s
        0xc9s
    .end array-data

    :array_2e
    .array-data 2
        0x1cs
        0x3cs
        0x5cs
        0x7cs
        0xa0s
        0xc0s
        0xc8s
        0xc9s
    .end array-data

    :array_2f
    .array-data 2
        0x10s
        0x2cs
        0x50s
        0x70s
        0x94s
        0xb4s
        0xc8s
        0xc9s
    .end array-data

    :array_30
    .array-data 2
        0x11s
        0x35s
        0x58s
        0x78s
        0x9cs
        0xbcs
        0xc8s
        0xc9s
    .end array-data

    .line 827
    :array_31
    .array-data 2
        0x1fs
        0x1cs
        0x1fs
        0x1es
        0x1fs
        0x1es
        0x1fs
        0x1fs
        0x1es
        0x1fs
        0x1es
        0x1fs
    .end array-data

    .line 829
    :array_32
    .array-data 2
        0x0s
        0x4s
        0xads
        0x8s
        0x5as
        0x1s
        0xd5s
        0x54s
        0xb4s
        0x9s
        0x64s
        0x5s
        0x59s
        0x45s
        0x95s
        0xas
        0xa6s
        0x4s
        0x55s
        0x24s
        0xads
        0x8s
        0x5as
        0x62s
        0xdas
        0x4s
        0xb4s
        0x5s
        0xb4s
        0x55s
        0x52s
        0xds
        0x94s
        0xas
        0x4as
        0x2as
        0x56s
        0x2s
        0x6ds
        0x71s
        0x6ds
        0x1s
        0xdas
        0x2s
        0xd2s
        0x52s
        0xa9s
        0x5s
        0x49s
        0xds
        0x2as
        0x45s
        0x2bs
        0x9s
        0x56s
        0x1s
        0xb5s
        0x20s
        0x6ds
        0x1s
        0x59s
        0x69s
        0xd4s
        0xas
        0xa8s
        0x5s
        0xa9s
        0x56s
        0xa5s
        0x4s
        0x2bs
        0x9s
        0x9es
        0x38s
        0xb6s
        0x8s
        0xecs
        0x74s
        0x6cs
        0x5s
        0xd4s
        0xas
        0xe4s
        0x6as
        0x52s
        0x5s
        0x95s
        0xas
        0x5as
        0x42s
        0x5bs
        0x4s
        0xb6s
        0x4s
        0xb4s
        0x22s
        0x6as
        0x5s
        0x52s
        0x75s
        0xc9s
        0xas
        0x52s
        0x5s
        0x35s
        0x55s
        0x4ds
        0xas
        0x5as
        0x2s
        0x5ds
        0x31s
        0xb5s
        0x2s
        0x6as
        0x8as
        0x68s
        0x5s
        0xa9s
        0xas
        0x8as
        0x6as
        0x2as
        0x5s
        0x2ds
        0x9s
        0xaas
        0x48s
        0x5as
        0x1s
        0xb5s
        0x9s
        0xb0s
        0x39s
        0x64s
        0x5s
        0x25s
        0x75s
        0x95s
        0xas
        0x96s
        0x4s
        0x4ds
        0x54s
        0xads
        0x4s
        0xdas
        0x4s
        0xd4s
        0x44s
        0xb4s
        0x5s
        0x54s
        0x85s
        0x52s
        0xds
        0x92s
        0xas
        0x56s
        0x6as
        0x56s
        0x2s
        0x6ds
        0x2s
        0x6as
        0x41s
        0xdas
        0x2s
        0xb2s
        0xa1s
        0xa9s
        0x5s
        0x49s
        0xds
        0xas
        0x6ds
        0x2as
        0x9s
        0x56s
        0x1s
        0xads
        0x50s
        0x6ds
        0x1s
        0xd9s
        0x2s
        0xd1s
        0x3as
        0xa8s
        0x5s
        0x29s
        0x85s
        0xa5s
        0xcs
        0x2as
        0x9s
        0x96s
        0x54s
        0xb6s
        0x8s
        0x6cs
        0x9s
        0x64s
        0x45s
        0xd4s
        0xas
        0xa4s
        0x5s
        0x51s
        0x25s
        0x95s
        0xas
        0x2as
        0x72s
        0x5bs
        0x4s
        0xb6s
        0x4s
        0xacs
        0x52s
        0x6as
        0x5s
        0xd2s
        0xas
        0xa2s
        0x4as
        0x4as
        0x5s
        0x55s
        0x94s
        0x2ds
        0xas
        0x5as
        0x2s
        0x75s
        0x61s
        0xb5s
        0x2s
        0x6as
        0x3s
        0x61s
        0x45s
        0xa9s
        0xas
        0x4as
        0x5s
        0x25s
        0x25s
        0x2ds
        0x9s
        0x9as
        0x68s
        0xdas
        0x8s
        0xb4s
        0x9s
        0xa8s
        0x59s
        0x54s
        0x3s
        0xa5s
        0xas
        0x91s
        0x3as
        0x96s
        0x4s
        0xads
        0xb0s
        0xads
        0x4s
        0xdas
        0x4s
        0xf4s
        0x62s
        0xb4s
        0x5s
        0x54s
        0xbs
        0x44s
        0x5ds
        0x52s
        0xas
        0x95s
        0x4s
        0x55s
        0x22s
        0x6ds
        0x2s
        0x5as
        0x71s
        0xdas
        0x2s
        0xaas
        0x5s
        0xb2s
        0x55s
        0x49s
        0xbs
        0x4as
        0xas
        0x2ds
        0x39s
        0x36s
        0x1s
        0x6ds
        0x80s
        0x6ds
        0x1s
        0xd9s
        0x2s
        0xe9s
        0x6as
        0xa8s
        0x5s
        0x29s
        0xbs
        0x9as
        0x4cs
        0xaas
        0x8s
        0xb6s
        0x8s
        0xb4s
        0x38s
        0x6cs
        0x9s
        0x54s
        0x75s
        0xd4s
        0xas
        0xa4s
        0x5s
        0x45s
        0x55s
        0x95s
        0xas
        0x9as
        0x4s
        0x55s
        0x44s
        0xb5s
        0x4s
        0x6as
        0x82s
        0x6as
        0x5s
        0xd2s
        0xas
        0x92s
        0x6as
        0x4as
        0x5s
        0x55s
        0xas
        0x2as
        0x4as
        0x5as
        0x2s
        0xb5s
        0x2s
        0xb2s
        0x31s
        0x69s
        0x3s
        0x31s
        0x73s
        0xa9s
        0xas
        0x4as
        0x5s
        0x2ds
        0x55s
        0x2ds
        0x9s
        0x5as
        0x1s
        0xd5s
        0x48s
        0xb4s
        0x9s
        0x68s
        0x89s
        0x54s
        0xbs
        0xa4s
        0xas
        0xa5s
        0x6as
        0x95s
        0x4s
        0xads
        0x8s
        0x6as
        0x44s
        0xdas
        0x4s
        0x74s
        0x5s
        0xb0s
        0x25s
        0x54s
        0x3s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "y"    # I
    .param p2, "m"    # I
    .param p3, "d"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "c"    # Ljava/util/Calendar;

    .prologue
    .line 46
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ChineseCalendar;-><init>(Ljava/util/Date;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0
    .param p1, "d"    # Ljava/util/Date;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 42
    invoke-super {p0, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 43
    return-void
.end method

.method public constructor <init>(ZIII)V
    .locals 1
    .param p1, "isChinese"    # Z
    .param p2, "y"    # I
    .param p3, "m"    # I
    .param p4, "d"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 54
    if-eqz p1, :cond_0

    .line 55
    const/16 v0, 0x321

    invoke-virtual {p0, v0, p2}, Lcom/zte/mifavor/widget/ChineseCalendar;->set(II)V

    .line 56
    const/16 v0, 0x322

    invoke-virtual {p0, v0, p3}, Lcom/zte/mifavor/widget/ChineseCalendar;->set(II)V

    .line 57
    const/16 v0, 0x323

    invoke-virtual {p0, v0, p4}, Lcom/zte/mifavor/widget/ChineseCalendar;->set(II)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/zte/mifavor/widget/ChineseCalendar;->set(III)V

    goto :goto_0
.end method

.method private computeChineseFields()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/16 v10, 0xb

    .line 461
    invoke-virtual {p0, v11}, Lcom/zte/mifavor/widget/ChineseCalendar;->internalGet(I)I

    move-result v3

    .line 462
    .local v3, "gregorianYear":I
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/zte/mifavor/widget/ChineseCalendar;->internalGet(I)I

    move-result v9

    add-int/lit8 v2, v9, 0x1

    .line 463
    .local v2, "gregorianMonth":I
    const/4 v9, 0x5

    invoke-virtual {p0, v9}, Lcom/zte/mifavor/widget/ChineseCalendar;->internalGet(I)I

    move-result v1

    .line 465
    .local v1, "gregorianDate":I
    const/16 v9, 0x76d

    if-lt v3, v9, :cond_0

    const/16 v9, 0x834

    if-le v3, v9, :cond_1

    .line 515
    :cond_0
    return-void

    .line 470
    :cond_1
    const/16 v9, 0x7d0

    if-ge v3, v9, :cond_2

    .line 471
    const/16 v8, 0x76d

    .line 472
    .local v8, "startYear":I
    const/4 v7, 0x1

    .line 473
    .local v7, "startMonth":I
    const/4 v6, 0x1

    .line 474
    .local v6, "startDate":I
    const/16 v9, 0x76c

    iput v9, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    .line 475
    iput v10, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    .line 476
    iput v10, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    .line 487
    :goto_0
    const/4 v0, 0x0

    .line 489
    .local v0, "daysDiff":I
    move v4, v8

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 490
    invoke-static {v4}, Lcom/zte/mifavor/widget/ChineseCalendar;->isGregorianLeapYear(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 491
    add-int/lit16 v0, v0, 0x16e

    .line 489
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 479
    .end local v0    # "daysDiff":I
    .end local v4    # "i":I
    .end local v6    # "startDate":I
    .end local v7    # "startMonth":I
    .end local v8    # "startYear":I
    :cond_2
    const/16 v8, 0x7d0

    .line 480
    .restart local v8    # "startYear":I
    const/4 v7, 0x1

    .line 481
    .restart local v7    # "startMonth":I
    const/4 v6, 0x1

    .line 482
    .restart local v6    # "startDate":I
    const/16 v9, 0x7cf

    iput v9, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    .line 483
    iput v10, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    .line 484
    const/16 v9, 0x19

    iput v9, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    goto :goto_0

    .line 493
    .restart local v0    # "daysDiff":I
    .restart local v4    # "i":I
    :cond_3
    add-int/lit16 v0, v0, 0x16d

    goto :goto_2

    .line 497
    :cond_4
    move v4, v7

    :goto_3
    if-ge v4, v2, :cond_5

    .line 498
    add-int/lit8 v9, v4, -0x1

    invoke-static {v3, v9}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInGregorianMonth(II)I

    move-result v9

    add-int/2addr v0, v9

    .line 497
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 501
    :cond_5
    add-int/lit8 v9, v1, -0x1

    add-int/2addr v0, v9

    .line 503
    iget v9, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    .line 505
    iget v9, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    iget v10, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-static {v9, v10}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v5

    .line 506
    .local v5, "lastDate":I
    :goto_4
    iget v9, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    if-le v9, v5, :cond_0

    .line 507
    iget v9, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    sub-int/2addr v9, v5

    iput v9, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    .line 508
    iget v9, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    iget v10, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-static {v9, v10}, Lcom/zte/mifavor/widget/ChineseCalendar;->nextChineseMonth(II)I

    move-result v9

    iput v9, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    .line 509
    iget v9, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    if-ne v9, v11, :cond_6

    .line 510
    iget v9, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    .line 512
    :cond_6
    iget v9, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    iget v10, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-static {v9, v10}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v5

    goto :goto_4
.end method

.method private computeGregorianFields()V
    .locals 12

    .prologue
    const/16 v11, 0x834

    const/16 v10, 0xc

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 334
    iget v5, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    .line 335
    .local v5, "y":I
    iget v4, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    .line 336
    .local v4, "m":I
    iget v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    .line 337
    .local v1, "d":I
    iput-boolean v8, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areChineseFieldsComputed:Z

    .line 338
    iput-boolean v8, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areFieldsSet:Z

    .line 339
    iput-boolean v9, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->lastSetChinese:Z

    .line 341
    const/16 v6, 0x76c

    if-ge v5, v6, :cond_3

    .line 342
    const/16 v5, 0x76b

    .line 346
    :cond_0
    :goto_0
    const/16 v6, -0xc

    if-ge v4, v6, :cond_4

    .line 347
    const/16 v4, -0xc

    .line 351
    :cond_1
    :goto_1
    if-ge v1, v8, :cond_5

    .line 352
    const/4 v1, 0x1

    .line 356
    :cond_2
    :goto_2
    mul-int/lit16 v6, v5, 0x2710

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x64

    add-int/2addr v6, v7

    add-int v2, v6, v1

    .line 357
    .local v2, "dateint":I
    const v6, 0x121ef17

    if-ge v2, v6, :cond_6

    .line 358
    const/16 v6, 0x76d

    invoke-virtual {p0, v6, v9, v8}, Lcom/zte/mifavor/widget/ChineseCalendar;->set(III)V

    .line 359
    invoke-super {p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 390
    :goto_3
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ChineseCalendar;->computeChineseFields()V

    .line 391
    return-void

    .line 343
    .end local v2    # "dateint":I
    :cond_3
    if-le v5, v11, :cond_0

    .line 344
    const/16 v5, 0x835

    goto :goto_0

    .line 348
    :cond_4
    if-le v4, v10, :cond_1

    .line 349
    const/16 v4, 0xc

    goto :goto_1

    .line 353
    :cond_5
    const/16 v6, 0x1e

    if-le v1, v6, :cond_2

    .line 354
    const/16 v1, 0x1e

    goto :goto_2

    .line 360
    .restart local v2    # "dateint":I
    :cond_6
    const v6, 0x14073f1

    if-le v2, v6, :cond_7

    .line 361
    const/16 v6, 0xb

    const/16 v7, 0x1f

    invoke-virtual {p0, v11, v6, v7}, Lcom/zte/mifavor/widget/ChineseCalendar;->set(III)V

    .line 362
    invoke-super {p0}, Ljava/util/GregorianCalendar;->complete()V

    goto :goto_3

    .line 364
    :cond_7
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v6, v10, :cond_8

    .line 365
    const/16 v4, 0xc

    .line 367
    :cond_8
    invoke-static {v5, v4}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v3

    .line 368
    .local v3, "days":I
    if-nez v3, :cond_9

    .line 369
    neg-int v4, v4

    .line 370
    invoke-static {v5, v4}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v3

    .line 372
    :cond_9
    if-le v1, v3, :cond_a

    .line 373
    move v1, v3

    .line 375
    :cond_a
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v5, v6, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->set(III)V

    .line 376
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ChineseCalendar;->computeChineseFields()V

    .line 378
    const/4 v0, 0x0

    .line 379
    .local v0, "amount":I
    :cond_b
    :goto_4
    iget v6, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    if-ne v6, v5, :cond_c

    iget v6, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    if-eq v6, v4, :cond_d

    .line 380
    :cond_c
    iget v6, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    iget v7, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-static {v6, v7}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v6

    add-int/2addr v0, v6

    .line 381
    iget v6, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    iget v7, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-static {v6, v7}, Lcom/zte/mifavor/widget/ChineseCalendar;->nextChineseMonth(II)I

    move-result v6

    iput v6, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    .line 382
    iget v6, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    if-ne v6, v8, :cond_b

    .line 383
    iget v6, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    goto :goto_4

    .line 386
    :cond_d
    iget v6, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    sub-int v6, v1, v6

    add-int/2addr v0, v6

    .line 388
    const/4 v6, 0x5

    invoke-super {p0, v6, v0}, Ljava/util/GregorianCalendar;->add(II)V

    goto :goto_3
.end method

.method private computeIfNeed(I)V
    .locals 3
    .param p1, "field"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 310
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->isChineseField(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 311
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->lastSetChinese:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areChineseFieldsComputed:Z

    if-nez v0, :cond_0

    .line 312
    invoke-super {p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 313
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ChineseCalendar;->computeChineseFields()V

    .line 314
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areFieldsSet:Z

    .line 315
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areChineseFieldsComputed:Z

    .line 316
    iput-boolean v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areSolarTermsComputed:Z

    .line 318
    :cond_0
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->isChineseTermsField(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areSolarTermsComputed:Z

    if-nez v0, :cond_1

    .line 319
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ChineseCalendar;->computeSolarTerms()V

    .line 320
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areSolarTermsComputed:Z

    .line 331
    :cond_1
    :goto_0
    return-void

    .line 323
    :cond_2
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->lastSetChinese:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areFieldsSet:Z

    if-nez v0, :cond_1

    .line 324
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ChineseCalendar;->computeGregorianFields()V

    .line 325
    invoke-super {p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 326
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areFieldsSet:Z

    .line 327
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areChineseFieldsComputed:Z

    .line 328
    iput-boolean v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areSolarTermsComputed:Z

    goto :goto_0
.end method

.method private computeSolarTerms()V
    .locals 3

    .prologue
    .line 587
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/ChineseCalendar;->internalGet(I)I

    move-result v1

    .line 588
    .local v1, "gregorianYear":I
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/ChineseCalendar;->internalGet(I)I

    move-result v0

    .line 590
    .local v0, "gregorianMonth":I
    const/16 v2, 0x76d

    if-lt v1, v2, :cond_0

    const/16 v2, 0x834

    if-le v1, v2, :cond_1

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    invoke-static {v1, v0}, Lcom/zte/mifavor/widget/ChineseCalendar;->sectionalTerm(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->sectionalTerm:I

    .line 594
    invoke-static {v1, v0}, Lcom/zte/mifavor/widget/ChineseCalendar;->principleTerm(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->principleTerm:I

    goto :goto_0
.end method

.method public static daysInChineseMonth(II)I
    .locals 8
    .param p0, "y"    # I
    .param p1, "m"    # I

    .prologue
    const/4 v7, 0x1

    .line 671
    add-int/lit16 v5, p0, -0x76c

    add-int/lit8 v2, v5, 0x0

    .line 672
    .local v2, "index":I
    const/4 v4, 0x0

    .line 673
    .local v4, "v":I
    const/4 v3, 0x0

    .line 674
    .local v3, "l":I
    const/16 v0, 0x1e

    .line 675
    .local v0, "d":I
    if-gt v7, p1, :cond_1

    const/16 v5, 0x8

    if-gt p1, v5, :cond_1

    .line 676
    sget-object v5, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonths:[C

    mul-int/lit8 v6, v2, 0x2

    aget-char v4, v5, v6

    .line 677
    add-int/lit8 v3, p1, -0x1

    .line 678
    shr-int v5, v4, v3

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v7, :cond_0

    .line 679
    const/16 v0, 0x1d

    .line 702
    :cond_0
    :goto_0
    return v0

    .line 681
    :cond_1
    const/16 v5, 0x9

    if-gt v5, p1, :cond_2

    const/16 v5, 0xc

    if-gt p1, v5, :cond_2

    .line 682
    sget-object v5, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonths:[C

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-char v4, v5, v6

    .line 683
    add-int/lit8 v3, p1, -0x9

    .line 684
    shr-int v5, v4, v3

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v7, :cond_0

    .line 685
    const/16 v0, 0x1d

    goto :goto_0

    .line 688
    :cond_2
    sget-object v5, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonths:[C

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-char v4, v5, v6

    .line 689
    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v4, v5, 0xf

    .line 690
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 691
    const/4 v0, 0x0

    goto :goto_0

    .line 693
    :cond_3
    const/16 v0, 0x1d

    .line 694
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v5, Lcom/zte/mifavor/widget/ChineseCalendar;->bigLeapMonthYears:[I

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 695
    sget-object v5, Lcom/zte/mifavor/widget/ChineseCalendar;->bigLeapMonthYears:[I

    aget v5, v5, v1

    if-ne v5, v2, :cond_4

    .line 696
    const/16 v0, 0x1e

    .line 697
    goto :goto_0

    .line 694
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static daysInGregorianMonth(II)I
    .locals 2
    .param p0, "y"    # I
    .param p1, "m"    # I

    .prologue
    .line 612
    sget-object v1, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInGregorianMonth:[C

    aget-char v0, v1, p1

    .line 613
    .local v0, "d":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-static {p0}, Lcom/zte/mifavor/widget/ChineseCalendar;->isGregorianLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 614
    add-int/lit8 v0, v0, 0x1

    .line 616
    :cond_0
    return v0
.end method

.method public static getMonthLeapByYear(I)I
    .locals 4
    .param p0, "y"    # I

    .prologue
    .line 663
    add-int/lit16 v2, p0, -0x76c

    add-int/lit8 v0, v2, 0x0

    .line 664
    .local v0, "index":I
    const/4 v1, 0x0

    .line 665
    .local v1, "v":I
    sget-object v2, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonths:[C

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-char v1, v2, v3

    .line 666
    shr-int/lit8 v2, v1, 0x4

    and-int/lit8 v1, v2, 0xf

    .line 667
    neg-int v2, v1

    return v2
.end method

.method private isChineseField(I)Z
    .locals 1
    .param p1, "field"    # I

    .prologue
    .line 282
    sparse-switch p1, :sswitch_data_0

    .line 294
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 292
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 282
    nop

    :sswitch_data_0
    .sparse-switch
        0x321 -> :sswitch_0
        0x322 -> :sswitch_0
        0x323 -> :sswitch_0
        0x324 -> :sswitch_0
        0x325 -> :sswitch_0
        0x326 -> :sswitch_0
        0x327 -> :sswitch_0
        0x328 -> :sswitch_0
        0x378 -> :sswitch_0
    .end sparse-switch
.end method

.method private isChineseTermsField(I)Z
    .locals 1
    .param p1, "field"    # I

    .prologue
    .line 299
    sparse-switch p1, :sswitch_data_0

    .line 305
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 303
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 299
    nop

    :sswitch_data_0
    .sparse-switch
        0x324 -> :sswitch_0
        0x325 -> :sswitch_0
        0x378 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isGregorianLeapYear(I)Z
    .locals 2
    .param p0, "year"    # I

    .prologue
    .line 598
    const/4 v0, 0x0

    .line 599
    .local v0, "isLeap":Z
    rem-int/lit8 v1, p0, 0x4

    if-nez v1, :cond_0

    .line 600
    const/4 v0, 0x1

    .line 602
    :cond_0
    rem-int/lit8 v1, p0, 0x64

    if-nez v1, :cond_1

    .line 603
    const/4 v0, 0x0

    .line 605
    :cond_1
    rem-int/lit16 v1, p0, 0x190

    if-nez v1, :cond_2

    .line 606
    const/4 v0, 0x1

    .line 608
    :cond_2
    return v0
.end method

.method public static nextChineseMonth(II)I
    .locals 5
    .param p0, "y"    # I
    .param p1, "m"    # I

    .prologue
    .line 706
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 707
    .local v1, "n":I
    if-lez p1, :cond_0

    .line 708
    add-int/lit16 v3, p0, -0x76c

    add-int/lit8 v0, v3, 0x0

    .line 709
    .local v0, "index":I
    sget-object v3, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonths:[C

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-char v2, v3, v4

    .line 710
    .local v2, "v":I
    shr-int/lit8 v3, v2, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 711
    if-ne v2, p1, :cond_0

    .line 712
    neg-int v1, p1

    .line 715
    .end local v0    # "index":I
    .end local v2    # "v":I
    :cond_0
    const/16 v3, 0xd

    if-ne v1, v3, :cond_1

    .line 716
    const/4 v1, 0x1

    .line 718
    :cond_1
    return v1
.end method

.method public static principleTerm(II)I
    .locals 6
    .param p0, "y"    # I
    .param p1, "m"    # I

    .prologue
    .line 643
    add-int/lit8 p1, p1, 0x1

    .line 644
    const/16 v3, 0x76d

    if-lt p0, v3, :cond_0

    const/16 v3, 0x834

    if-le p0, v3, :cond_2

    .line 645
    :cond_0
    const/4 v2, 0x0

    .line 659
    :cond_1
    :goto_0
    return v2

    .line 647
    :cond_2
    const/4 v0, 0x0

    .line 648
    .local v0, "index":I
    add-int/lit16 v3, p0, -0x76d

    add-int/lit8 v1, v3, 0x1

    .line 649
    .local v1, "ry":I
    :goto_1
    sget-object v3, Lcom/zte/mifavor/widget/ChineseCalendar;->principleTermYear:[[C

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    aget-char v3, v3, v0

    if-lt v1, v3, :cond_3

    .line 650
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 652
    :cond_3
    sget-object v3, Lcom/zte/mifavor/widget/ChineseCalendar;->principleTermMap:[[C

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    mul-int/lit8 v4, v0, 0x4

    rem-int/lit8 v5, v1, 0x4

    add-int/2addr v4, v5

    aget-char v2, v3, v4

    .line 653
    .local v2, "term":I
    const/16 v3, 0xab

    if-ne v1, v3, :cond_4

    const/4 v3, 0x3

    if-ne p1, v3, :cond_4

    .line 654
    const/16 v2, 0x15

    .line 656
    :cond_4
    const/16 v3, 0xb5

    if-ne v1, v3, :cond_1

    const/4 v3, 0x5

    if-ne p1, v3, :cond_1

    .line 657
    const/16 v2, 0x15

    goto :goto_0
.end method

.method public static sectionalTerm(II)I
    .locals 7
    .param p0, "y"    # I
    .param p1, "m"    # I

    .prologue
    const/4 v6, 0x4

    .line 620
    add-int/lit8 p1, p1, 0x1

    .line 621
    const/16 v3, 0x76d

    if-lt p0, v3, :cond_0

    const/16 v3, 0x834

    if-le p0, v3, :cond_2

    .line 622
    :cond_0
    const/4 v2, 0x0

    .line 639
    :cond_1
    :goto_0
    return v2

    .line 624
    :cond_2
    const/4 v0, 0x0

    .line 625
    .local v0, "index":I
    add-int/lit16 v3, p0, -0x76d

    add-int/lit8 v1, v3, 0x1

    .line 626
    .local v1, "ry":I
    :goto_1
    sget-object v3, Lcom/zte/mifavor/widget/ChineseCalendar;->sectionalTermYear:[[C

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    aget-char v3, v3, v0

    if-lt v1, v3, :cond_3

    .line 627
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 629
    :cond_3
    sget-object v3, Lcom/zte/mifavor/widget/ChineseCalendar;->sectionalTermMap:[[C

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    mul-int/lit8 v4, v0, 0x4

    rem-int/lit8 v5, v1, 0x4

    add-int/2addr v4, v5

    aget-char v2, v3, v4

    .line 630
    .local v2, "term":I
    const/16 v3, 0x79

    if-ne v1, v3, :cond_4

    if-ne p1, v6, :cond_4

    .line 631
    const/4 v2, 0x5

    .line 633
    :cond_4
    const/16 v3, 0x84

    if-ne v1, v3, :cond_5

    if-ne p1, v6, :cond_5

    .line 634
    const/4 v2, 0x5

    .line 636
    :cond_5
    const/16 v3, 0xc2

    if-ne v1, v3, :cond_1

    const/4 v3, 0x6

    if-ne p1, v3, :cond_1

    .line 637
    const/4 v2, 0x6

    goto :goto_0
.end method


# virtual methods
.method public add(II)V
    .locals 6
    .param p1, "field"    # I
    .param p2, "amount"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 131
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->computeIfNeed(I)V

    .line 133
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->isChineseField(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    invoke-super {p0, p1, p2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 135
    iput-boolean v4, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->lastSetChinese:Z

    .line 136
    iput-boolean v4, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areChineseFieldsComputed:Z

    .line 137
    iput-boolean v4, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areSolarTermsComputed:Z

    .line 174
    :goto_0
    return-void

    .line 141
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 167
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0d\u652f\u6301\u7684field\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    :pswitch_0
    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    .line 170
    :cond_2
    iput-boolean v5, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->lastSetChinese:Z

    .line 171
    iput-boolean v4, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areFieldsSet:Z

    .line 172
    iput-boolean v4, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areChineseFieldsComputed:Z

    .line 173
    iput-boolean v4, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areSolarTermsComputed:Z

    goto :goto_0

    .line 146
    :pswitch_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_2

    .line 147
    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    iget v3, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-static {v2, v3}, Lcom/zte/mifavor/widget/ChineseCalendar;->nextChineseMonth(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    .line 148
    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    if-ne v2, v5, :cond_3

    .line 149
    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    .line 146
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 154
    .end local v0    # "i":I
    :pswitch_2
    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    iget v3, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-static {v2, v3}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v1

    .line 155
    .local v1, "maxDate":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, p2, :cond_1

    .line 156
    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    .line 157
    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    if-le v2, v1, :cond_5

    .line 158
    iput v5, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    .line 159
    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    iget v3, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-static {v2, v3}, Lcom/zte/mifavor/widget/ChineseCalendar;->nextChineseMonth(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    .line 160
    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    if-ne v2, v5, :cond_4

    .line 161
    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    .line 163
    :cond_4
    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    iget v3, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-static {v2, v3}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v1

    .line 155
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x321
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public computeChineseFields(III)Lcom/zte/mifavor/widget/ChineseCalendar;
    .locals 9
    .param p1, "gregorianYear"    # I
    .param p2, "gregorianMonth"    # I
    .param p3, "gregorianDate"    # I

    .prologue
    const/16 v8, 0xb

    .line 521
    new-instance v3, Lcom/zte/mifavor/widget/ChineseCalendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/zte/mifavor/widget/ChineseCalendar;-><init>(Ljava/util/Calendar;)V

    .line 523
    .local v3, "mChineseCalendar":Lcom/zte/mifavor/widget/ChineseCalendar;
    const/16 v7, 0x76d

    if-ge p1, v7, :cond_0

    .line 524
    const/16 p1, 0x76d

    .line 527
    :cond_0
    const/16 v7, 0x834

    if-le p1, v7, :cond_1

    .line 528
    const/16 p1, 0x834

    .line 532
    :cond_1
    const/16 v7, 0x7d0

    if-ge p1, v7, :cond_2

    .line 533
    const/16 v6, 0x76d

    .line 534
    .local v6, "startYear":I
    const/4 v5, 0x1

    .line 535
    .local v5, "startMonth":I
    const/4 v4, 0x1

    .line 536
    .local v4, "startDate":I
    const/16 v7, 0x76c

    iput v7, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    .line 537
    iput v8, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    .line 538
    iput v8, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    .line 549
    :goto_0
    const/4 v0, 0x0

    .line 551
    .local v0, "daysDiff":I
    move v1, v6

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_4

    .line 552
    invoke-static {v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->isGregorianLeapYear(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 553
    add-int/lit16 v0, v0, 0x16e

    .line 551
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 541
    .end local v0    # "daysDiff":I
    .end local v1    # "i":I
    .end local v4    # "startDate":I
    .end local v5    # "startMonth":I
    .end local v6    # "startYear":I
    :cond_2
    const/16 v6, 0x7d0

    .line 542
    .restart local v6    # "startYear":I
    const/4 v5, 0x1

    .line 543
    .restart local v5    # "startMonth":I
    const/4 v4, 0x1

    .line 544
    .restart local v4    # "startDate":I
    const/16 v7, 0x7cf

    iput v7, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    .line 545
    iput v8, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    .line 546
    const/16 v7, 0x19

    iput v7, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    goto :goto_0

    .line 555
    .restart local v0    # "daysDiff":I
    .restart local v1    # "i":I
    :cond_3
    add-int/lit16 v0, v0, 0x16d

    goto :goto_2

    .line 559
    :cond_4
    move v1, v5

    :goto_3
    if-ge v1, p2, :cond_5

    .line 560
    add-int/lit8 v7, v1, -0x1

    invoke-static {p1, v7}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInGregorianMonth(II)I

    move-result v7

    add-int/2addr v0, v7

    .line 559
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 563
    :cond_5
    add-int/lit8 v7, p3, -0x1

    add-int/2addr v0, v7

    .line 565
    iget v7, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    add-int/2addr v7, v0

    iput v7, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    .line 567
    iget v7, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    iget v8, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-static {v7, v8}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v2

    .line 568
    .local v2, "lastDate":I
    :goto_4
    iget v7, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    if-le v7, v2, :cond_7

    .line 569
    iget v7, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    sub-int/2addr v7, v2

    iput v7, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    .line 570
    iget v7, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    iget v8, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-static {v7, v8}, Lcom/zte/mifavor/widget/ChineseCalendar;->nextChineseMonth(II)I

    move-result v7

    iput v7, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    .line 571
    iget v7, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 572
    iget v7, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    .line 574
    :cond_6
    iget v7, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    iget v8, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-static {v7, v8}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v2

    goto :goto_4

    .line 577
    :cond_7
    const/16 v7, 0x321

    iget v8, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    invoke-virtual {v3, v7, v8}, Lcom/zte/mifavor/widget/ChineseCalendar;->set(II)V

    .line 578
    const/16 v7, 0x322

    iget v8, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-virtual {v3, v7, v8}, Lcom/zte/mifavor/widget/ChineseCalendar;->set(II)V

    .line 579
    const/16 v7, 0x323

    iget v8, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    invoke-virtual {v3, v7, v8}, Lcom/zte/mifavor/widget/ChineseCalendar;->set(II)V

    .line 580
    return-object v3
.end method

.method public computeGregorianFields(III)Ljava/util/Calendar;
    .locals 10
    .param p1, "y"    # I
    .param p2, "m"    # I
    .param p3, "d"    # I

    .prologue
    .line 397
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 398
    .local v6, "mCalendar":Ljava/util/Calendar;
    const/16 v7, 0x76c

    if-ge p1, v7, :cond_3

    .line 399
    const/16 p1, 0x76b

    .line 403
    :cond_0
    :goto_0
    const/16 v7, -0xc

    if-ge p2, v7, :cond_4

    .line 404
    const/16 p2, -0xc

    .line 408
    :cond_1
    :goto_1
    const/4 v7, 0x1

    if-ge p3, v7, :cond_5

    .line 409
    const/4 p3, 0x1

    .line 412
    :cond_2
    :goto_2
    const-string v7, "wweer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "chinese: y:  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  m:   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "     d:  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    mul-int/lit16 v7, p1, 0x2710

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x64

    add-int/2addr v7, v8

    add-int v1, v7, p3

    .line 414
    .local v1, "dateint":I
    const v7, 0x121ef17

    if-ge v1, v7, :cond_6

    .line 415
    const/16 v7, 0x76d

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0, v7, v8, v9}, Lcom/zte/mifavor/widget/ChineseCalendar;->set(III)V

    .line 416
    invoke-super {p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 447
    :goto_3
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/zte/mifavor/widget/ChineseCalendar;->internalGet(I)I

    move-result v5

    .line 448
    .local v5, "gregorianYear":I
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/zte/mifavor/widget/ChineseCalendar;->internalGet(I)I

    move-result v7

    add-int/lit8 v4, v7, 0x1

    .line 449
    .local v4, "gregorianMonth":I
    const/4 v7, 0x5

    invoke-virtual {p0, v7}, Lcom/zte/mifavor/widget/ChineseCalendar;->internalGet(I)I

    move-result v3

    .line 452
    .local v3, "gregorianDate":I
    const/4 v7, 0x1

    invoke-virtual {v6, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 453
    const/4 v7, 0x2

    invoke-virtual {v6, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 454
    const/4 v7, 0x5

    invoke-virtual {v6, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 456
    return-object v6

    .line 400
    .end local v1    # "dateint":I
    .end local v3    # "gregorianDate":I
    .end local v4    # "gregorianMonth":I
    .end local v5    # "gregorianYear":I
    :cond_3
    const/16 v7, 0x834

    if-le p1, v7, :cond_0

    .line 401
    const/16 p1, 0x835

    goto :goto_0

    .line 405
    :cond_4
    const/16 v7, 0xc

    if-le p2, v7, :cond_1

    .line 406
    const/16 p2, 0xc

    goto :goto_1

    .line 410
    :cond_5
    const/16 v7, 0x1e

    if-le p3, v7, :cond_2

    .line 411
    const/16 p3, 0x1e

    goto :goto_2

    .line 417
    .restart local v1    # "dateint":I
    :cond_6
    const v7, 0x14073f1

    if-le v1, v7, :cond_7

    .line 418
    const/16 v7, 0x834

    const/16 v8, 0xb

    const/16 v9, 0x1f

    invoke-virtual {p0, v7, v8, v9}, Lcom/zte/mifavor/widget/ChineseCalendar;->set(III)V

    .line 419
    invoke-super {p0}, Ljava/util/GregorianCalendar;->complete()V

    goto :goto_3

    .line 421
    :cond_7
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/16 v8, 0xc

    if-le v7, v8, :cond_8

    .line 422
    const/16 p2, 0xc

    .line 424
    :cond_8
    invoke-static {p1, p2}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v2

    .line 425
    .local v2, "days":I
    if-nez v2, :cond_9

    .line 426
    neg-int p2, p2

    .line 427
    invoke-static {p1, p2}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v2

    .line 429
    :cond_9
    if-le p3, v2, :cond_a

    .line 430
    move p3, v2

    .line 432
    :cond_a
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, p1, v7, p3}, Lcom/zte/mifavor/widget/ChineseCalendar;->set(III)V

    .line 433
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ChineseCalendar;->computeChineseFields()V

    .line 435
    const/4 v0, 0x0

    .line 436
    .local v0, "amount":I
    :cond_b
    :goto_4
    iget v7, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    if-ne v7, p1, :cond_c

    iget v7, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    if-eq v7, p2, :cond_d

    .line 437
    :cond_c
    iget v7, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    iget v8, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-static {v7, v8}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v7

    add-int/2addr v0, v7

    .line 438
    iget v7, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    iget v8, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-static {v7, v8}, Lcom/zte/mifavor/widget/ChineseCalendar;->nextChineseMonth(II)I

    move-result v7

    iput v7, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    .line 439
    iget v7, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    .line 440
    iget v7, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    goto :goto_4

    .line 443
    :cond_d
    iget v7, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    sub-int v7, p3, v7

    add-int/2addr v0, v7

    .line 444
    const/4 v7, 0x5

    invoke-super {p0, v7, v0}, Ljava/util/GregorianCalendar;->add(II)V

    goto/16 :goto_3
.end method

.method public get(I)I
    .locals 4
    .param p1, "field"    # I

    .prologue
    const/4 v3, 0x5

    .line 91
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->computeIfNeed(I)V

    .line 93
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->isChineseField(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    invoke-super {p0, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 124
    :goto_0
    return v0

    .line 97
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 126
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e0d\u652f\u6301\u7684field\u83b7\u53d6\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :sswitch_0
    iget v0, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    goto :goto_0

    .line 101
    :sswitch_1
    iget v0, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    goto :goto_0

    .line 103
    :sswitch_2
    iget v0, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    goto :goto_0

    .line 105
    :sswitch_3
    iget v0, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->sectionalTerm:I

    goto :goto_0

    .line 107
    :sswitch_4
    iget v0, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->principleTerm:I

    goto :goto_0

    .line 109
    :sswitch_5
    iget v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    add-int/lit8 v1, v1, -0x4

    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 112
    :sswitch_6
    iget v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    add-int/lit8 v1, v1, -0x4

    rem-int/lit8 v1, v1, 0xc

    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 115
    :sswitch_7
    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v1

    const/16 v2, 0x324

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 116
    const/16 v0, 0x324

    .local v0, "option":I
    goto :goto_0

    .line 117
    .end local v0    # "option":I
    :cond_1
    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v1

    const/16 v2, 0x325

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 118
    const/16 v0, 0x325

    .restart local v0    # "option":I
    goto :goto_0

    .line 119
    .end local v0    # "option":I
    :cond_2
    const/16 v1, 0x323

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 120
    const/16 v0, 0x322

    .restart local v0    # "option":I
    goto :goto_0

    .line 122
    .end local v0    # "option":I
    :cond_3
    const/16 v0, 0x323

    .restart local v0    # "option":I
    goto :goto_0

    .line 97
    nop

    :sswitch_data_0
    .sparse-switch
        0x321 -> :sswitch_0
        0x322 -> :sswitch_1
        0x323 -> :sswitch_2
        0x324 -> :sswitch_3
        0x325 -> :sswitch_4
        0x326 -> :sswitch_5
        0x327 -> :sswitch_6
        0x328 -> :sswitch_6
        0x378 -> :sswitch_7
    .end sparse-switch
.end method

.method public getChinese(I)Ljava/lang/String;
    .locals 3
    .param p1, "field"    # I

    .prologue
    const/4 v1, 0x2

    .line 215
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->computeIfNeed(I)V

    .line 217
    sparse-switch p1, :sswitch_data_0

    .line 243
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0d\u652f\u6301\u7684field\u4e2d\u6587\u83b7\u53d6\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x326

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->getChinese(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x327

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->getChinese(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    :goto_0
    return-object v0

    .line 222
    :sswitch_1
    iget v0, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    if-lez v0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonthNames:[Ljava/lang/String;

    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6708"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u95f0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonthNames:[Ljava/lang/String;

    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    neg-int v2, v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6708"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 227
    :sswitch_2
    sget-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDateNames:[Ljava/lang/String;

    iget v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    aget-object v0, v0, v1

    goto :goto_0

    .line 229
    :sswitch_3
    sget-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->sectionalTermNames:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0

    .line 231
    :sswitch_4
    sget-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->principleTermNames:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0

    .line 233
    :sswitch_5
    sget-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->stemNames:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0

    .line 235
    :sswitch_6
    sget-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->branchNames:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0

    .line 237
    :sswitch_7
    sget-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->animalNames:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0

    .line 239
    :sswitch_8
    sget-object v0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseWeekNames:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0

    .line 241
    :sswitch_9
    const/16 v0, 0x378

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ChineseCalendar;->getChinese(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 217
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_8
        0x321 -> :sswitch_0
        0x322 -> :sswitch_1
        0x323 -> :sswitch_2
        0x324 -> :sswitch_3
        0x325 -> :sswitch_4
        0x326 -> :sswitch_5
        0x327 -> :sswitch_6
        0x328 -> :sswitch_7
        0x378 -> :sswitch_9
    .end sparse-switch
.end method

.method public getChineseDateString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x321

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->getChinese(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x322

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->getChinese(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x323

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->getChinese(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimpleChineseDateString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x322

    .line 254
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x321

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x323

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimpleGregorianDateString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public roll(II)V
    .locals 6
    .param p1, "field"    # I
    .param p2, "amount"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 177
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->computeIfNeed(I)V

    .line 179
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->isChineseField(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 180
    invoke-super {p0, p1, p2}, Ljava/util/GregorianCalendar;->roll(II)V

    .line 181
    iput-boolean v4, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->lastSetChinese:Z

    .line 182
    iput-boolean v4, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areChineseFieldsComputed:Z

    .line 183
    iput-boolean v4, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areSolarTermsComputed:Z

    .line 212
    :goto_0
    return-void

    .line 187
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 205
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0d\u652f\u6301\u7684field\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    :pswitch_0
    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    .line 208
    :cond_2
    iput-boolean v5, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->lastSetChinese:Z

    .line 209
    iput-boolean v4, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areFieldsSet:Z

    .line 210
    iput-boolean v4, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areChineseFieldsComputed:Z

    .line 211
    iput-boolean v4, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areSolarTermsComputed:Z

    goto :goto_0

    .line 192
    :pswitch_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_2

    .line 193
    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    iget v3, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-static {v2, v3}, Lcom/zte/mifavor/widget/ChineseCalendar;->nextChineseMonth(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 197
    .end local v0    # "i":I
    :pswitch_2
    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    iget v3, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    invoke-static {v2, v3}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v1

    .line 198
    .local v1, "maxDate":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, p2, :cond_1

    .line 199
    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    .line 200
    iget v2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    if-le v2, v1, :cond_3

    .line 201
    iput v5, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    .line 198
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x321
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public set(II)V
    .locals 3
    .param p1, "field"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->computeIfNeed(I)V

    .line 66
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->isChineseField(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    packed-switch p1, :pswitch_data_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0d\u652f\u6301\u7684field\u8bbe\u7f6e\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :pswitch_0
    iput p2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseYear:I

    .line 80
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->lastSetChinese:Z

    .line 85
    :goto_1
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areFieldsSet:Z

    .line 86
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areChineseFieldsComputed:Z

    .line 87
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->areSolarTermsComputed:Z

    .line 88
    return-void

    .line 72
    :pswitch_1
    iput p2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseMonth:I

    goto :goto_0

    .line 75
    :pswitch_2
    iput p2, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->chineseDate:I

    goto :goto_0

    .line 82
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 83
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ChineseCalendar;->lastSetChinese:Z

    goto :goto_1

    .line 67
    :pswitch_data_0
    .packed-switch 0x321
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x325

    const/16 v3, 0x324

    .line 269
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 270
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ChineseCalendar;->getSimpleGregorianDateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/ChineseCalendar;->getChinese(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " | [\u519c\u5386]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ChineseCalendar;->getChineseDateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x328

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/ChineseCalendar;->getChinese(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\u5e74 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\u65e5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/ChineseCalendar;->getChinese(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\u65e5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/zte/mifavor/widget/ChineseCalendar;->getChinese(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
