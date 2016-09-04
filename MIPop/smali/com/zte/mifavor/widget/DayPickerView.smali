.class Lcom/zte/mifavor/widget/DayPickerView;
.super Landroid/widget/ListView;
.source "DayPickerView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/zte/mifavor/widget/OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/DayPickerView$ScrollStateRunnable;
    }
.end annotation


# static fields
.field private static final GOTO_SCROLL_DURATION:I = 0xfa

.field private static LIST_TOP_OFFSET:I = 0x0

.field private static final SCROLL_CHANGE_DELAY:I = 0x28

.field private static final TAG:Ljava/lang/String; = "DayPickerView"


# instance fields
.field private mAdapter:Lcom/zte/mifavor/widget/SimpleMonthAdapter;

.field private mController:Lcom/zte/mifavor/widget/DatePickerController;

.field private mCurrentMonthDisplayed:I

.field private mCurrentScrollState:I

.field private mFriction:F

.field private mPerformingScroll:Z

.field private mPreviousScrollState:I

.field private mScrollStateChangedRunnable:Lcom/zte/mifavor/widget/DayPickerView$ScrollStateRunnable;

.field private mSelectedDay:Ljava/util/Calendar;

.field private mTempDay:Ljava/util/Calendar;

.field private mYearFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, -0x1

    sput v0, Lcom/zte/mifavor/widget/DayPickerView;->LIST_TOP_OFFSET:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/zte/mifavor/widget/DatePickerController;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/zte/mifavor/widget/DatePickerController;

    .prologue
    const/4 v3, 0x0

    .line 79
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/DayPickerView;->mYearFormat:Ljava/text/SimpleDateFormat;

    .line 58
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/zte/mifavor/widget/DayPickerView;->mFriction:F

    .line 61
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    .line 64
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/DayPickerView;->mTempDay:Ljava/util/Calendar;

    .line 69
    iput v3, p0, Lcom/zte/mifavor/widget/DayPickerView;->mPreviousScrollState:I

    .line 71
    iput v3, p0, Lcom/zte/mifavor/widget/DayPickerView;->mCurrentScrollState:I

    .line 76
    new-instance v0, Lcom/zte/mifavor/widget/DayPickerView$ScrollStateRunnable;

    invoke-direct {v0, p0, p0}, Lcom/zte/mifavor/widget/DayPickerView$ScrollStateRunnable;-><init>(Lcom/zte/mifavor/widget/DayPickerView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/DayPickerView;->mScrollStateChangedRunnable:Lcom/zte/mifavor/widget/DayPickerView$ScrollStateRunnable;

    .line 80
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DayPickerView;->init()V

    .line 81
    invoke-virtual {p0, p2}, Lcom/zte/mifavor/widget/DayPickerView;->setController(Lcom/zte/mifavor/widget/DatePickerController;)V

    .line 82
    return-void
.end method

.method static synthetic access$002(Lcom/zte/mifavor/widget/DayPickerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/DayPickerView;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/zte/mifavor/widget/DayPickerView;->mCurrentScrollState:I

    return p1
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/DayPickerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/DayPickerView;

    .prologue
    .line 42
    iget v0, p0, Lcom/zte/mifavor/widget/DayPickerView;->mPreviousScrollState:I

    return v0
.end method

.method static synthetic access$102(Lcom/zte/mifavor/widget/DayPickerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/DayPickerView;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/zte/mifavor/widget/DayPickerView;->mPreviousScrollState:I

    return p1
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/zte/mifavor/widget/DayPickerView;->LIST_TOP_OFFSET:I

    return v0
.end method

.method private findAccessibilityFocus()Ljava/util/Calendar;
    .locals 5

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DayPickerView;->getChildCount()I

    move-result v1

    .line 379
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 380
    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 381
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lcom/zte/mifavor/widget/SimpleMonthView;

    if-eqz v4, :cond_0

    .line 382
    check-cast v0, Lcom/zte/mifavor/widget/SimpleMonthView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/SimpleMonthView;->getAccessibilityFocus()Ljava/util/Calendar;

    move-result-object v2

    .line 383
    .local v2, "focus":Ljava/util/Calendar;
    if-eqz v2, :cond_0

    .line 389
    .end local v2    # "focus":Ljava/util/Calendar;
    :goto_1
    return-object v2

    .line 379
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 389
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getDiffMonths(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 5
    .param p1, "start"    # Ljava/util/Calendar;
    .param p2, "end"    # Ljava/util/Calendar;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 143
    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int v1, v2, v3

    .line 144
    .local v1, "diffYears":I
    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0xc

    add-int v0, v2, v3

    .line 145
    .local v0, "diffMonths":I
    return v0
.end method

.method private getMonthAndYearString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3
    .param p1, "day"    # Ljava/util/Calendar;

    .prologue
    const/4 v2, 0x2

    .line 440
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 441
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v2, v2, v1}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 442
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    iget-object v1, p0, Lcom/zte/mifavor/widget/DayPickerView;->mYearFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 444
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPositionFromDay(Ljava/util/Calendar;)I
    .locals 4
    .param p1, "day"    # Ljava/util/Calendar;

    .prologue
    .line 149
    iget-object v2, p0, Lcom/zte/mifavor/widget/DayPickerView;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    invoke-interface {v2}, Lcom/zte/mifavor/widget/DatePickerController;->getMinDate()Ljava/util/Calendar;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/mifavor/widget/DayPickerView;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    invoke-interface {v3}, Lcom/zte/mifavor/widget/DatePickerController;->getMaxDate()Ljava/util/Calendar;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/zte/mifavor/widget/DayPickerView;->getDiffMonths(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v1

    .line 150
    .local v1, "diffMonthMax":I
    iget-object v2, p0, Lcom/zte/mifavor/widget/DayPickerView;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    invoke-interface {v2}, Lcom/zte/mifavor/widget/DatePickerController;->getMinDate()Ljava/util/Calendar;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/zte/mifavor/widget/DayPickerView;->getDiffMonths(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v0

    .line 152
    .local v0, "diffMonth":I
    if-gez v0, :cond_1

    .line 153
    const/4 v0, 0x0

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 154
    :cond_1
    if-le v0, v1, :cond_0

    .line 155
    move v0, v1

    goto :goto_0
.end method

.method private restoreAccessibilityFocus(Ljava/util/Calendar;)Z
    .locals 5
    .param p1, "day"    # Ljava/util/Calendar;

    .prologue
    const/4 v3, 0x0

    .line 400
    if-nez p1, :cond_1

    .line 414
    :cond_0
    :goto_0
    return v3

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DayPickerView;->getChildCount()I

    move-result v1

    .line 405
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 406
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 407
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lcom/zte/mifavor/widget/SimpleMonthView;

    if-eqz v4, :cond_2

    .line 408
    check-cast v0, Lcom/zte/mifavor/widget/SimpleMonthView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/SimpleMonthView;->restoreAccessibilityFocus(Ljava/util/Calendar;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 409
    const/4 v3, 0x1

    goto :goto_0

    .line 405
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getMostVisiblePosition()I
    .locals 11

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DayPickerView;->getFirstVisiblePosition()I

    move-result v3

    .line 344
    .local v3, "firstPosition":I
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DayPickerView;->getHeight()I

    move-result v4

    .line 346
    .local v4, "height":I
    const/4 v6, 0x0

    .line 347
    .local v6, "maxDisplayedHeight":I
    const/4 v7, 0x0

    .line 348
    .local v7, "mostVisibleIndex":I
    const/4 v5, 0x0

    .line 349
    .local v5, "i":I
    const/4 v0, 0x0

    .line 350
    .local v0, "bottom":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 351
    invoke-virtual {p0, v5}, Lcom/zte/mifavor/widget/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 352
    .local v1, "child":Landroid/view/View;
    if-nez v1, :cond_1

    .line 363
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    add-int v8, v3, v7

    return v8

    .line 355
    .restart local v1    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 356
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    sub-int v2, v8, v9

    .line 357
    .local v2, "displayedHeight":I
    if-le v2, v6, :cond_2

    .line 358
    move v7, v5

    .line 359
    move v6, v2

    .line 361
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 362
    goto :goto_0
.end method

.method public goTo(Ljava/util/Calendar;ZZZ)Z
    .locals 10
    .param p1, "day"    # Ljava/util/Calendar;
    .param p2, "animate"    # Z
    .param p3, "setSelected"    # Z
    .param p4, "forceScroll"    # Z

    .prologue
    .line 180
    if-eqz p3, :cond_0

    .line 181
    iget-object v6, p0, Lcom/zte/mifavor/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 184
    :cond_0
    iget-object v6, p0, Lcom/zte/mifavor/widget/DayPickerView;->mTempDay:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 185
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/DayPickerView;->getPositionFromDay(Ljava/util/Calendar;)I

    move-result v3

    .line 188
    .local v3, "position":I
    const/4 v1, 0x0

    .line 189
    .local v1, "i":I
    const/4 v5, 0x0

    .line 192
    .local v5, "top":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 193
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_4

    .line 201
    :cond_1
    if-eqz v0, :cond_5

    .line 202
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/DayPickerView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    .line 207
    .local v4, "selectedPosition":I
    :goto_1
    if-eqz p3, :cond_2

    .line 208
    iget-object v6, p0, Lcom/zte/mifavor/widget/DayPickerView;->mAdapter:Lcom/zte/mifavor/widget/SimpleMonthAdapter;

    iget-object v7, p0, Lcom/zte/mifavor/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v6, v7}, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 213
    :cond_2
    if-ne v3, v4, :cond_3

    if-eqz p4, :cond_8

    .line 214
    :cond_3
    iget-object v6, p0, Lcom/zte/mifavor/widget/DayPickerView;->mTempDay:Ljava/util/Calendar;

    invoke-virtual {p0, v6}, Lcom/zte/mifavor/widget/DayPickerView;->setMonthDisplayed(Ljava/util/Calendar;)V

    .line 215
    const/4 v6, 0x2

    iput v6, p0, Lcom/zte/mifavor/widget/DayPickerView;->mPreviousScrollState:I

    .line 216
    if-eqz p2, :cond_6

    .line 217
    sget v6, Lcom/zte/mifavor/widget/DayPickerView;->LIST_TOP_OFFSET:I

    const/16 v7, 0xfa

    invoke-virtual {p0, v3, v6, v7}, Lcom/zte/mifavor/widget/DayPickerView;->smoothScrollToPositionFromTop(III)V

    .line 219
    const/4 v6, 0x1

    .line 226
    :goto_2
    return v6

    .line 196
    .end local v4    # "selectedPosition":I
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 197
    if-gez v5, :cond_1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 204
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "selectedPosition":I
    goto :goto_1

    .line 221
    :cond_6
    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/DayPickerView;->postSetSelection(I)V

    .line 226
    :cond_7
    :goto_3
    const/4 v6, 0x0

    goto :goto_2

    .line 223
    :cond_8
    if-eqz p3, :cond_7

    .line 224
    iget-object v6, p0, Lcom/zte/mifavor/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {p0, v6}, Lcom/zte/mifavor/widget/DayPickerView;->setMonthDisplayed(Ljava/util/Calendar;)V

    goto :goto_3
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 96
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/DayPickerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/DayPickerView;->setDrawSelectorOnTop(Z)V

    .line 99
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DayPickerView;->setUpListView()V

    .line 100
    return-void
.end method

.method protected layoutChildren()V
    .locals 2

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DayPickerView;->findAccessibilityFocus()Ljava/util/Calendar;

    move-result-object v0

    .line 420
    .local v0, "focusedDay":Ljava/util/Calendar;
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 421
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/DayPickerView;->mPerformingScroll:Z

    if-eqz v1, :cond_0

    .line 422
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zte/mifavor/widget/DayPickerView;->mPerformingScroll:Z

    .line 426
    :goto_0
    return-void

    .line 424
    :cond_0
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/DayPickerView;->restoreAccessibilityFocus(Ljava/util/Calendar;)Z

    goto :goto_0
.end method

.method public onChange()V
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DayPickerView;->setUpAdapter()V

    .line 104
    iget-object v0, p0, Lcom/zte/mifavor/widget/DayPickerView;->mAdapter:Lcom/zte/mifavor/widget/SimpleMonthAdapter;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/DayPickerView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 430
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/DayPickerView;->mYearFormat:Ljava/text/SimpleDateFormat;

    .line 431
    return-void
.end method

.method public onDateChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 368
    iget-object v0, p0, Lcom/zte/mifavor/widget/DayPickerView;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    invoke-interface {v0}, Lcom/zte/mifavor/widget/DatePickerController;->getSelectedDay()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/zte/mifavor/widget/DayPickerView;->goTo(Ljava/util/Calendar;ZZZ)Z

    .line 369
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 435
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 436
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 437
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 453
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 454
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 455
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 456
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 248
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/SimpleMonthView;

    .line 249
    .local v0, "child":Lcom/zte/mifavor/widget/SimpleMonthView;
    if-nez v0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 253
    :cond_0
    iget v1, p0, Lcom/zte/mifavor/widget/DayPickerView;->mCurrentScrollState:I

    iput v1, p0, Lcom/zte/mifavor/widget/DayPickerView;->mPreviousScrollState:I

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 271
    iget-object v0, p0, Lcom/zte/mifavor/widget/DayPickerView;->mScrollStateChangedRunnable:Lcom/zte/mifavor/widget/DayPickerView$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/widget/DayPickerView$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    .line 272
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 12
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/16 v11, 0x1000

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x2

    const/4 v5, 0x1

    .line 463
    if-eq p1, v11, :cond_0

    const/16 v6, 0x2000

    if-eq p1, v6, :cond_0

    .line 465
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v5

    .line 501
    :goto_0
    return v5

    .line 469
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DayPickerView;->getFirstVisiblePosition()I

    move-result v1

    .line 470
    .local v1, "firstVisiblePosition":I
    rem-int/lit8 v3, v1, 0xc

    .line 471
    .local v3, "month":I
    div-int/lit8 v6, v1, 0xc

    iget-object v7, p0, Lcom/zte/mifavor/widget/DayPickerView;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    invoke-interface {v7}, Lcom/zte/mifavor/widget/DatePickerController;->getMinYear()I

    move-result v7

    add-int v4, v6, v7

    .line 472
    .local v4, "year":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 473
    .local v0, "day":Ljava/util/Calendar;
    invoke-virtual {v0, v4, v3, v5}, Ljava/util/Calendar;->set(III)V

    .line 476
    if-ne p1, v11, :cond_2

    .line 477
    invoke-virtual {v0, v8, v5}, Ljava/util/Calendar;->add(II)V

    .line 478
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_1

    .line 479
    invoke-virtual {v0, v8, v10}, Ljava/util/Calendar;->set(II)V

    .line 480
    invoke-virtual {v0, v5, v5}, Ljava/util/Calendar;->add(II)V

    .line 498
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/DayPickerView;->getMonthAndYearString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/zte/mifavor/widget/DayPickerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 499
    invoke-virtual {p0, v0, v5, v10, v5}, Lcom/zte/mifavor/widget/DayPickerView;->goTo(Ljava/util/Calendar;ZZZ)Z

    .line 500
    iput-boolean v5, p0, Lcom/zte/mifavor/widget/DayPickerView;->mPerformingScroll:Z

    goto :goto_0

    .line 482
    :cond_2
    const/16 v6, 0x2000

    if-ne p1, v6, :cond_1

    .line 483
    invoke-virtual {p0, v10}, Lcom/zte/mifavor/widget/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 486
    .local v2, "firstVisibleView":Landroid/view/View;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    if-lt v6, v9, :cond_1

    .line 489
    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->add(II)V

    .line 490
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 491
    const/16 v6, 0xb

    invoke-virtual {v0, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 492
    invoke-virtual {v0, v5, v9}, Ljava/util/Calendar;->add(II)V

    goto :goto_1
.end method

.method public postSetSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DayPickerView;->clearFocus()V

    .line 231
    new-instance v0, Lcom/zte/mifavor/widget/DayPickerView$1;

    invoke-direct {v0, p0, p1}, Lcom/zte/mifavor/widget/DayPickerView$1;-><init>(Lcom/zte/mifavor/widget/DayPickerView;I)V

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/DayPickerView;->post(Ljava/lang/Runnable;)Z

    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lcom/zte/mifavor/widget/DayPickerView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 239
    return-void
.end method

.method setCalendarTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/zte/mifavor/widget/DayPickerView;->mAdapter:Lcom/zte/mifavor/widget/SimpleMonthAdapter;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->setCalendarTextColor(Landroid/content/res/ColorStateList;)V

    .line 276
    return-void
.end method

.method public setController(Lcom/zte/mifavor/widget/DatePickerController;)V
    .locals 1
    .param p1, "controller"    # Lcom/zte/mifavor/widget/DatePickerController;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/zte/mifavor/widget/DayPickerView;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/zte/mifavor/widget/DayPickerView;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    invoke-interface {v0, p0}, Lcom/zte/mifavor/widget/DatePickerController;->unregisterOnDateChangedListener(Lcom/zte/mifavor/widget/OnDateChangedListener;)V

    .line 88
    :cond_0
    iput-object p1, p0, Lcom/zte/mifavor/widget/DayPickerView;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    .line 89
    iget-object v0, p0, Lcom/zte/mifavor/widget/DayPickerView;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    invoke-interface {v0, p0}, Lcom/zte/mifavor/widget/DatePickerController;->registerOnDateChangedListener(Lcom/zte/mifavor/widget/OnDateChangedListener;)V

    .line 90
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DayPickerView;->setUpAdapter()V

    .line 91
    iget-object v0, p0, Lcom/zte/mifavor/widget/DayPickerView;->mAdapter:Lcom/zte/mifavor/widget/SimpleMonthAdapter;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/DayPickerView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DayPickerView;->onDateChanged()V

    .line 93
    return-void
.end method

.method protected setMonthDisplayed(Ljava/util/Calendar;)V
    .locals 3
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    const/4 v2, 0x2

    .line 261
    iget v0, p0, Lcom/zte/mifavor/widget/DayPickerView;->mCurrentMonthDisplayed:I

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 262
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/DayPickerView;->mCurrentMonthDisplayed:I

    .line 263
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DayPickerView;->invalidateViews()V

    .line 265
    :cond_0
    return-void
.end method

.method protected setUpAdapter()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/zte/mifavor/widget/DayPickerView;->mAdapter:Lcom/zte/mifavor/widget/SimpleMonthAdapter;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/zte/mifavor/widget/SimpleMonthAdapter;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DayPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/DayPickerView;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    invoke-direct {v0, v1, v2}, Lcom/zte/mifavor/widget/SimpleMonthAdapter;-><init>(Landroid/content/Context;Lcom/zte/mifavor/widget/DatePickerController;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/DayPickerView;->mAdapter:Lcom/zte/mifavor/widget/SimpleMonthAdapter;

    .line 119
    :goto_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/DayPickerView;->mAdapter:Lcom/zte/mifavor/widget/SimpleMonthAdapter;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->notifyDataSetChanged()V

    .line 120
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/DayPickerView;->mAdapter:Lcom/zte/mifavor/widget/SimpleMonthAdapter;

    iget-object v1, p0, Lcom/zte/mifavor/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 116
    iget-object v0, p0, Lcom/zte/mifavor/widget/DayPickerView;->mAdapter:Lcom/zte/mifavor/widget/SimpleMonthAdapter;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected setUpListView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/DayPickerView;->setCacheColorHint(I)V

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/DayPickerView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 132
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/DayPickerView;->setItemsCanFocus(Z)V

    .line 134
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/DayPickerView;->setFastScrollEnabled(Z)V

    .line 135
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/DayPickerView;->setVerticalScrollBarEnabled(Z)V

    .line 136
    invoke-virtual {p0, p0}, Lcom/zte/mifavor/widget/DayPickerView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 137
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/DayPickerView;->setFadingEdgeLength(I)V

    .line 139
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iget v1, p0, Lcom/zte/mifavor/widget/DayPickerView;->mFriction:F

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/DayPickerView;->setFriction(F)V

    .line 140
    return-void
.end method
