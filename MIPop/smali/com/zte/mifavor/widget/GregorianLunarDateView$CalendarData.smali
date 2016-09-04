.class public Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;
.super Ljava/lang/Object;
.source "GregorianLunarDateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/GregorianLunarDateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarData"
.end annotation


# instance fields
.field public chineseCalendar:Lcom/zte/mifavor/widget/ChineseCalendar;

.field public isGregorian:Z

.field public pickedDay:I

.field public pickedMonthSway:I

.field public pickedYear:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 1
    .param p1, "pickedYear"    # I
    .param p2, "pickedMonthSway"    # I
    .param p3, "pickedDay"    # I
    .param p4, "isGregorian"    # Z

    .prologue
    .line 806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 799
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->isGregorian:Z

    .line 807
    iput p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->pickedYear:I

    .line 808
    iput p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->pickedMonthSway:I

    .line 809
    iput p3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->pickedDay:I

    .line 810
    iput-boolean p4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->isGregorian:Z

    .line 811
    invoke-direct {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->initChineseCalendar()V

    .line 812
    return-void
.end method

.method private initChineseCalendar()V
    .locals 7

    .prologue
    .line 815
    iget-boolean v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->isGregorian:Z

    if-eqz v3, :cond_0

    .line 816
    new-instance v3, Lcom/zte/mifavor/widget/ChineseCalendar;

    iget v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->pickedYear:I

    iget v5, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->pickedMonthSway:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->pickedDay:I

    invoke-direct {v3, v4, v5, v6}, Lcom/zte/mifavor/widget/ChineseCalendar;-><init>(III)V

    iput-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->chineseCalendar:Lcom/zte/mifavor/widget/ChineseCalendar;

    .line 824
    :goto_0
    return-void

    .line 818
    :cond_0
    iget v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->pickedYear:I

    .line 819
    .local v2, "y":I
    iget v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->pickedMonthSway:I

    iget v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->pickedYear:I

    invoke-static {v3, v4}, Lcom/zte/mifavor/widget/Util;->convertMonthSwayToMonthLunarByYear(II)I

    move-result v1

    .line 820
    .local v1, "m":I
    iget v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->pickedDay:I

    .line 822
    .local v0, "d":I
    new-instance v3, Lcom/zte/mifavor/widget/ChineseCalendar;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2, v1, v0}, Lcom/zte/mifavor/widget/ChineseCalendar;-><init>(ZIII)V

    iput-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->chineseCalendar:Lcom/zte/mifavor/widget/ChineseCalendar;

    goto :goto_0
.end method


# virtual methods
.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->chineseCalendar:Lcom/zte/mifavor/widget/ChineseCalendar;

    return-object v0
.end method
