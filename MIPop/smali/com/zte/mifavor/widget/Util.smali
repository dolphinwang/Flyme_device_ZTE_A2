.class public Lcom/zte/mifavor/widget/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final lunarDays:[Ljava/lang/String;

.field public static final lunarMonths:[Ljava/lang/String;

.field public static final lunarNumbers:[Ljava/lang/String;

.field public static twelveMonthWithLeapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u96f6"

    aput-object v1, v0, v3

    const-string v1, "\u4e00"

    aput-object v1, v0, v4

    const-string v1, "\u4e8c"

    aput-object v1, v0, v5

    const-string v1, "\u4e09"

    aput-object v1, v0, v6

    const-string v1, "\u56db"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u4e94"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u516d"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u4e03"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u516b"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u4e5d"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/mifavor/widget/Util;->lunarNumbers:[Ljava/lang/String;

    .line 15
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u6b63"

    aput-object v1, v0, v3

    const-string v1, "\u4e8c"

    aput-object v1, v0, v4

    const-string v1, "\u4e09"

    aput-object v1, v0, v5

    const-string v1, "\u56db"

    aput-object v1, v0, v6

    const-string v1, "\u4e94"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u516d"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u4e03"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u516b"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u4e5d"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u5341"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u51ac"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u814a"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/mifavor/widget/Util;->lunarMonths:[Ljava/lang/String;

    .line 17
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u521d\u4e00"

    aput-object v1, v0, v3

    const-string v1, "\u521d\u4e8c"

    aput-object v1, v0, v4

    const-string v1, "\u521d\u4e09"

    aput-object v1, v0, v5

    const-string v1, "\u521d\u56db"

    aput-object v1, v0, v6

    const-string v1, "\u521d\u4e94"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u521d\u516d"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u521d\u4e03"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u521d\u516b"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u521d\u4e5d"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u521d\u5341"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u5341\u4e00"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u5341\u4e8c"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u5341\u4e09"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u5341\u56db"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u5341\u4e94"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u5341\u516d"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u5341\u4e03"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u5341\u516b"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u5341\u4e5d"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u5eff\u5341"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u5eff\u4e00"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u5eff\u4e8c"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u5eff\u4e09"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u5eff\u56db"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u5eff\u4e94"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u5eff\u516d"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u5eff\u4e03"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u5eff\u516b"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\u5eff\u4e5d"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u4e09\u5341"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/mifavor/widget/Util;->lunarDays:[Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zte/mifavor/widget/Util;->twelveMonthWithLeapCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertMonthLunarToMonthSway(II)I
    .locals 2
    .param p0, "monthLunar"    # I
    .param p1, "monthLeap"    # I

    .prologue
    .line 118
    if-lez p1, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "convertChineseMonthToMonthSway monthLeap should be in range of [-12, 0]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    if-nez p1, :cond_2

    .line 131
    .end local p0    # "monthLunar":I
    :cond_1
    :goto_0
    return p0

    .line 126
    .restart local p0    # "monthLunar":I
    :cond_2
    if-ne p0, p1, :cond_3

    .line 127
    neg-int v0, p0

    add-int/lit8 p0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_3
    neg-int v0, p1

    add-int/lit8 v0, v0, 0x1

    if-lt p0, v0, :cond_1

    .line 131
    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method public static convertMonthSwayToMonthLunar(II)I
    .locals 2
    .param p0, "monthSway"    # I
    .param p1, "monthLeap"    # I

    .prologue
    .line 137
    if-lez p1, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "convertChineseMonthToMonthSway monthLeap should be in range of [-12, 0]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    if-nez p1, :cond_2

    .line 150
    .end local p0    # "monthSway":I
    :cond_1
    :goto_0
    return p0

    .line 145
    .restart local p0    # "monthSway":I
    :cond_2
    neg-int v0, p1

    add-int/lit8 v0, v0, 0x1

    if-ne p0, v0, :cond_3

    move p0, p1

    .line 146
    goto :goto_0

    .line 147
    :cond_3
    neg-int v0, p1

    add-int/lit8 v0, v0, 0x1

    if-lt p0, v0, :cond_1

    .line 150
    add-int/lit8 p0, p0, -0x1

    goto :goto_0
.end method

.method public static convertMonthSwayToMonthLunarByYear(II)I
    .locals 2
    .param p0, "monthSway"    # I
    .param p1, "year"    # I

    .prologue
    .line 155
    invoke-static {p1}, Lcom/zte/mifavor/widget/Util;->getMonthLeapByYear(I)I

    move-result v0

    .line 156
    .local v0, "monthLeap":I
    invoke-static {p0, v0}, Lcom/zte/mifavor/widget/Util;->convertMonthSwayToMonthLunar(II)I

    move-result v1

    return v1
.end method

.method public static getLunarMonthsNamesWithLeap(I)[Ljava/lang/String;
    .locals 6
    .param p0, "monthLeap"    # I

    .prologue
    const/16 v5, 0xd

    const/4 v4, 0x0

    .line 91
    if-nez p0, :cond_1

    .line 92
    sget-object v1, Lcom/zte/mifavor/widget/Util;->lunarMonths:[Ljava/lang/String;

    .line 113
    :cond_0
    :goto_0
    return-object v1

    .line 95
    :cond_1
    const/16 v2, -0xc

    if-lt p0, v2, :cond_2

    if-lez p0, :cond_3

    .line 96
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "month should be in range of [-12, 0]"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    :cond_3
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 101
    .local v0, "monthLeapAbs":I
    sget-object v2, Lcom/zte/mifavor/widget/Util;->twelveMonthWithLeapCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 102
    .local v1, "monthsOut":[Ljava/lang/String;
    if-eqz v1, :cond_4

    array-length v2, v1

    if-eq v2, v5, :cond_0

    .line 106
    :cond_4
    new-array v1, v5, [Ljava/lang/String;

    .line 108
    sget-object v2, Lcom/zte/mifavor/widget/Util;->lunarMonths:[Ljava/lang/String;

    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u95f0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/zte/mifavor/widget/Util;->getLunarNameOfMonth(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 110
    sget-object v2, Lcom/zte/mifavor/widget/Util;->lunarMonths:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    sget-object v4, Lcom/zte/mifavor/widget/Util;->lunarMonths:[Ljava/lang/String;

    array-length v4, v4

    sub-int/2addr v4, v0

    invoke-static {v2, v0, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    sget-object v2, Lcom/zte/mifavor/widget/Util;->twelveMonthWithLeapCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getLunarNameOfDay(I)Ljava/lang/String;
    .locals 3
    .param p0, "day"    # I

    .prologue
    .line 82
    if-lez p0, :cond_0

    const/16 v0, 0x1f

    if-ge p0, v0, :cond_0

    .line 83
    sget-object v0, Lcom/zte/mifavor/widget/Util;->lunarDays:[Ljava/lang/String;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "day should be in range of [1, 30] day is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLunarNameOfMonth(I)Ljava/lang/String;
    .locals 3
    .param p0, "month"    # I

    .prologue
    .line 74
    if-lez p0, :cond_0

    const/16 v0, 0xd

    if-ge p0, v0, :cond_0

    .line 75
    sget-object v0, Lcom/zte/mifavor/widget/Util;->lunarMonths:[Ljava/lang/String;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "month should be in range of [1, 12] month is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLunarNameOfYear(I)Ljava/lang/String;
    .locals 5
    .param p0, "year"    # I

    .prologue
    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0xa

    .line 62
    .local v1, "divider":I
    const/4 v0, 0x0

    .line 64
    .local v0, "digital":I
    :goto_0
    if-lez p0, :cond_0

    .line 65
    rem-int v0, p0, v1

    .line 66
    const/4 v3, 0x0

    sget-object v4, Lcom/zte/mifavor/widget/Util;->lunarNumbers:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    div-int/lit8 p0, p0, 0xa

    goto :goto_0

    .line 69
    :cond_0
    const-string v3, "\u5e74"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getMonthLeapByYear(I)I
    .locals 1
    .param p0, "year"    # I

    .prologue
    .line 28
    invoke-static {p0}, Lcom/zte/mifavor/widget/ChineseCalendar;->getMonthLeapByYear(I)I

    move-result v0

    return v0
.end method

.method public static getSumOfDayInMonth(IIZ)I
    .locals 1
    .param p0, "year"    # I
    .param p1, "monthSway"    # I
    .param p2, "isGregorian"    # Z

    .prologue
    .line 32
    if-eqz p2, :cond_0

    .line 33
    invoke-static {p0, p1}, Lcom/zte/mifavor/widget/Util;->getSumOfDayInMonthForGregorianByMonth(II)I

    move-result v0

    .line 35
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/zte/mifavor/widget/Util;->getSumOfDayInMonthForLunarByMonthSway(II)I

    move-result v0

    goto :goto_0
.end method

.method public static getSumOfDayInMonthForGregorianByMonth(II)I
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I

    .prologue
    .line 40
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava/util/GregorianCalendar;-><init>(III)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getSumOfDayInMonthForLunarByMonthLunar(II)I
    .locals 1
    .param p0, "year"    # I
    .param p1, "monthLunar"    # I

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v0

    return v0
.end method

.method public static getSumOfDayInMonthForLunarByMonthSway(II)I
    .locals 3
    .param p0, "year"    # I
    .param p1, "monthSway"    # I

    .prologue
    .line 44
    invoke-static {p0}, Lcom/zte/mifavor/widget/ChineseCalendar;->getMonthLeapByYear(I)I

    move-result v0

    .line 45
    .local v0, "monthLeap":I
    invoke-static {p1, v0}, Lcom/zte/mifavor/widget/Util;->convertMonthSwayToMonthLunar(II)I

    move-result v1

    .line 46
    .local v1, "monthLunar":I
    invoke-static {p0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v2

    return v2
.end method

.method public static getSumOfDayInMonthForLunarLeapYear(III)I
    .locals 2
    .param p0, "year"    # I
    .param p1, "monthSway"    # I
    .param p2, "monthLeap"    # I

    .prologue
    .line 54
    invoke-static {p1, p2}, Lcom/zte/mifavor/widget/Util;->convertMonthSwayToMonthLunar(II)I

    move-result v0

    .line 55
    .local v0, "month":I
    invoke-static {p0, v0}, Lcom/zte/mifavor/widget/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v1

    return v1
.end method
