.class public Lcom/zte/mifavor/widget/GregorianLunarDateView;
.super Landroid/widget/LinearLayout;
.source "GregorianLunarDateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;,
        Lcom/zte/mifavor/widget/GregorianLunarDateView$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DAY_SPAN_GREGORIAN:I = 0x1f

.field private static final DAY_SPAN_LUNAR:I = 0x1e

.field private static final DAY_START:I = 0x1

.field private static final DAY_START_GREGORIAN:I = 0x1

.field private static final DAY_START_LUNAR:I = 0x1

.field private static final DAY_STOP:I = 0x1e

.field private static final DAY_STOP_GREGORIAN:I = 0x1f

.field private static final DAY_STOP_LUNAR:I = 0x1e

.field private static final MONTH_SPAN_GREGORIAN:I = 0xc

.field private static final MONTH_SPAN_LUNAR_LEAP:I = 0xd

.field private static final MONTH_SPAN_LUNAR_NORMAL:I = 0xc

.field private static final MONTH_START:I = 0x1

.field private static final MONTH_START_GREGORIAN:I = 0x1

.field private static final MONTH_START_LUNAR:I = 0x1

.field private static final MONTH_START_LUNAR_LEAP:I = 0x1

.field private static final MONTH_START_LUNAR_NORMAL:I = 0x1

.field private static final MONTH_STOP_GREGORIAN:I = 0xc

.field private static final MONTH_STOP_LUNAR_LEAP:I = 0xd

.field private static final MONTH_STOP_LUNAR_NORMAL:I = 0xc

.field private static final YEAR_START:I = 0x76c

.field private static final YEAR_STOP:I = 0x834

.field private static force:Z


# instance fields
.field private currDisplayMonthsLunar:[Ljava/lang/String;

.field private day_lable:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private displayDaysGregorian:[Ljava/lang/String;

.field private displayDaysLunar:[Ljava/lang/String;

.field private displayMonthsGregorian:[Ljava/lang/String;

.field private displayMonthsLunar:[Ljava/lang/String;

.field private displayYearsGregorian:[Ljava/lang/String;

.field private displayYearsLunar:[Ljava/lang/String;

.field private mContentView:Landroid/view/View;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mIsGregorian:Z

.field private final mLunarChoice:Landroid/widget/RelativeLayout;

.field private mOnDateChangedListener:Lcom/zte/mifavor/widget/GregorianLunarDateView$OnDateChangedListener;

.field private mSelectorWhellPaintColor:I

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mStateMachineEvent:Z

.field private mSwitch:Lcom/zte/mifavor/widget/SwitchZTE;

.field private mTempDate:Ljava/util/Calendar;

.field private mTextView:Landroid/widget/TextView;

.field private mTransparentPaintColor:I

.field private mUPdownWhellPaintColor:I

.field private max_year:I

.field private min_year:I

.field private month_lable:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private picker_day_input:Landroid/widget/EditText;

.field private picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private picker_month_input:Landroid/widget/EditText;

.field private picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private picker_year_input:Landroid/widget/EditText;

.field private space1:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private space2:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private space3:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private year_lable:Lcom/zte/mifavor/widget/NumberPickerZTE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->force:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    const/16 v7, 0x76c

    iput v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->min_year:I

    .line 61
    const/16 v7, 0x834

    iput v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->max_year:I

    .line 83
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mSwitch:Lcom/zte/mifavor/widget/SwitchZTE;

    .line 84
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mTextView:Landroid/widget/TextView;

    .line 98
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mIsGregorian:Z

    .line 102
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mStateMachineEvent:Z

    .line 103
    const v7, -0xe5b03d

    iput v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mSelectorWhellPaintColor:I

    .line 104
    const/high16 v7, -0x76000000

    iput v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mUPdownWhellPaintColor:I

    .line 105
    const v7, 0xffffff

    iput v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mTransparentPaintColor:I

    .line 120
    sget v7, Lcom/zte/extres/R$layout;->view_gregorian_lunar_date:I

    invoke-static {p1, v7, p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mContentView:Landroid/view/View;

    .line 122
    new-instance v2, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;

    invoke-direct {v2, p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;-><init>(Lcom/zte/mifavor/widget/GregorianLunarDateView;)V

    .line 145
    .local v2, "onChangeListener":Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    iput-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;

    .line 146
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 147
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object v8, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v9, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->init(IIILcom/zte/mifavor/widget/GregorianLunarDateView$OnDateChangedListener;)V

    .line 150
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mContentView:Landroid/view/View;

    sget v8, Lcom/zte/extres/R$id;->space1:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/zte/mifavor/widget/NumberPickerZTE;

    iput-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->space1:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 151
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->space1:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v8, 0x19

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 152
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->space1:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 153
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->space1:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 154
    const/4 v7, 0x1

    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, " "

    aput-object v8, v3, v7

    .line 155
    .local v3, "space_1":[Ljava/lang/String;
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->space1:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v7, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 156
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->space1:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 158
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mContentView:Landroid/view/View;

    sget v8, Lcom/zte/extres/R$id;->picker_year:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/zte/mifavor/widget/NumberPickerZTE;

    iput-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 159
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v8, 0x19

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 160
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v8, 0x12

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setSelectorSize(I)V

    .line 161
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v7, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnValueChangedListener(Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;)V

    .line 162
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v8, Lcom/zte/extres/R$id;->numberpicker_input:I

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year_input:Landroid/widget/EditText;

    .line 164
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mContentView:Landroid/view/View;

    sget v8, Lcom/zte/extres/R$id;->year:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/zte/mifavor/widget/NumberPickerZTE;

    iput-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->year_lable:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 165
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->year_lable:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 166
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->year_lable:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 167
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->year_lable:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 168
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$array;->year:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 169
    .local v6, "year":[Ljava/lang/String;
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->year_lable:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v7, v6}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 170
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->year_lable:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 172
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mContentView:Landroid/view/View;

    sget v8, Lcom/zte/extres/R$id;->space2:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/zte/mifavor/widget/NumberPickerZTE;

    iput-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->space2:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 173
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->space2:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v8, 0x19

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 174
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->space2:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 175
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->space2:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 176
    const/4 v7, 0x1

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, " "

    aput-object v8, v4, v7

    .line 177
    .local v4, "space_2":[Ljava/lang/String;
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->space2:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v7, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 178
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->space2:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 180
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mContentView:Landroid/view/View;

    sget v8, Lcom/zte/extres/R$id;->picker_month:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/zte/mifavor/widget/NumberPickerZTE;

    iput-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 181
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v8, 0x19

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 182
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v8, 0x12

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setSelectorSize(I)V

    .line 183
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v7, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnValueChangedListener(Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;)V

    .line 184
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v8, Lcom/zte/extres/R$id;->numberpicker_input:I

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month_input:Landroid/widget/EditText;

    .line 186
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mContentView:Landroid/view/View;

    sget v8, Lcom/zte/extres/R$id;->month:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/zte/mifavor/widget/NumberPickerZTE;

    iput-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->month_lable:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 187
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->month_lable:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 188
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->month_lable:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 189
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->month_lable:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 190
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$array;->month:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "month":[Ljava/lang/String;
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->month_lable:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v7, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 192
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->month_lable:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 194
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mContentView:Landroid/view/View;

    sget v8, Lcom/zte/extres/R$id;->space3:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/zte/mifavor/widget/NumberPickerZTE;

    iput-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->space3:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 195
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->space3:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v8, 0x19

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 196
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->space3:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 197
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->space3:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 198
    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, " "

    aput-object v8, v5, v7

    .line 199
    .local v5, "space_3":[Ljava/lang/String;
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->space3:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v7, v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 200
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->space3:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 202
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mContentView:Landroid/view/View;

    sget v8, Lcom/zte/extres/R$id;->picker_day:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/zte/mifavor/widget/NumberPickerZTE;

    iput-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 203
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v8, 0x19

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 204
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v8, 0x12

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setSelectorSize(I)V

    .line 205
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v7, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnValueChangedListener(Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;)V

    .line 206
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v8, Lcom/zte/extres/R$id;->numberpicker_input:I

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day_input:Landroid/widget/EditText;

    .line 208
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mContentView:Landroid/view/View;

    sget v8, Lcom/zte/extres/R$id;->day:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/zte/mifavor/widget/NumberPickerZTE;

    iput-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->day_lable:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 209
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->day_lable:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 210
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->day_lable:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 211
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->day_lable:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 212
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$array;->day:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "day":[Ljava/lang/String;
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->day_lable:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v7, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 214
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->day_lable:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 216
    sget v7, Lcom/zte/extres/R$id;->pickers:I

    invoke-virtual {p0, v7}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mSpinners:Landroid/widget/LinearLayout;

    .line 218
    invoke-direct {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->reorderSpinners()V

    .line 220
    sget v7, Lcom/zte/extres/R$id;->switch1:I

    invoke-virtual {p0, v7}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/zte/mifavor/widget/SwitchZTE;

    iput-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mSwitch:Lcom/zte/mifavor/widget/SwitchZTE;

    .line 221
    sget v7, Lcom/zte/extres/R$id;->text1:I

    invoke-virtual {p0, v7}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mTextView:Landroid/widget/TextView;

    .line 222
    sget v7, Lcom/zte/extres/R$id;->lunar_choice:I

    invoke-virtual {p0, v7}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mLunarChoice:Landroid/widget/RelativeLayout;

    .line 225
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "zh"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 226
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mSwitch:Lcom/zte/mifavor/widget/SwitchZTE;

    new-instance v8, Lcom/zte/mifavor/widget/GregorianLunarDateView$2;

    invoke-direct {v8, p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView$2;-><init>(Lcom/zte/mifavor/widget/GregorianLunarDateView;)V

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/SwitchZTE;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 236
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mSwitch:Lcom/zte/mifavor/widget/SwitchZTE;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/zte/mifavor/widget/SwitchZTE;->setChecked(Z)V

    .line 241
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mLunarChoice:Landroid/widget/RelativeLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 239
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setGregorian(Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/GregorianLunarDateView;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/GregorianLunarDateView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Lcom/zte/mifavor/widget/NumberPickerZTE;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/GregorianLunarDateView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/GregorianLunarDateView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mLunarChoice:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/GregorianLunarDateView;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mIsGregorian:Z

    return v0
.end method

.method static synthetic access$300(Lcom/zte/mifavor/widget/GregorianLunarDateView;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/GregorianLunarDateView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->passiveUpdateMonthAndDay(IIZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Lcom/zte/mifavor/widget/NumberPickerZTE;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/GregorianLunarDateView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/mifavor/widget/GregorianLunarDateView;IIIIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/GregorianLunarDateView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Z

    .prologue
    .line 27
    invoke-direct/range {p0 .. p5}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->passiveUpdateDay(IIIIZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Lcom/zte/mifavor/widget/NumberPickerZTE;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/GregorianLunarDateView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/GregorianLunarDateView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$702(Lcom/zte/mifavor/widget/GregorianLunarDateView;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/GregorianLunarDateView;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$800(Lcom/zte/mifavor/widget/GregorianLunarDateView;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/GregorianLunarDateView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->notifyDateChanged()V

    return-void
.end method

.method static synthetic access$900(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/GregorianLunarDateView;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mStateMachineEvent:Z

    return v0
.end method

.method private adjustCalendarByLimit(Ljava/util/Calendar;IIZ)Ljava/util/Calendar;
    .locals 7
    .param p1, "c"    # Ljava/util/Calendar;
    .param p2, "yearStart"    # I
    .param p3, "yearStop"    # I
    .param p4, "isGregorian"    # Z

    .prologue
    const/4 v6, 0x5

    const/4 v3, 0x2

    const/16 v5, 0xc

    const/4 v4, 0x1

    .line 267
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 268
    .local v1, "yearGrego":I
    if-eqz p4, :cond_2

    .line 269
    if-ge v1, p2, :cond_0

    .line 270
    invoke-virtual {p1, v4, p2}, Ljava/util/Calendar;->set(II)V

    .line 271
    invoke-virtual {p1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 272
    invoke-virtual {p1, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 274
    :cond_0
    if-le v1, p3, :cond_1

    .line 275
    invoke-virtual {p1, v4, p3}, Ljava/util/Calendar;->set(II)V

    .line 276
    const/16 v2, 0xb

    invoke-virtual {p1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 277
    invoke-static {p3, v5}, Lcom/zte/mifavor/widget/Util;->getSumOfDayInMonthForGregorianByMonth(II)I

    move-result v0

    .line 278
    .local v0, "daySway":I
    invoke-virtual {p1, v6, v0}, Ljava/util/Calendar;->set(II)V

    .line 288
    .end local v0    # "daySway":I
    :cond_1
    :goto_0
    return-object p1

    .line 281
    :cond_2
    sub-int v2, v1, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v3, v1, p3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 282
    new-instance p1, Lcom/zte/mifavor/widget/ChineseCalendar;

    .end local p1    # "c":Ljava/util/Calendar;
    invoke-direct {p1, v4, p2, v4, v4}, Lcom/zte/mifavor/widget/ChineseCalendar;-><init>(ZIII)V

    .restart local p1    # "c":Ljava/util/Calendar;
    goto :goto_0

    .line 284
    :cond_3
    invoke-static {p3, v5}, Lcom/zte/mifavor/widget/Util;->getSumOfDayInMonthForLunarByMonthLunar(II)I

    move-result v0

    .line 285
    .restart local v0    # "daySway":I
    new-instance p1, Lcom/zte/mifavor/widget/ChineseCalendar;

    .end local p1    # "c":Ljava/util/Calendar;
    invoke-direct {p1, v4, p3, v5, v0}, Lcom/zte/mifavor/widget/ChineseCalendar;-><init>(ZIII)V

    .restart local p1    # "c":Ljava/util/Calendar;
    goto :goto_0
.end method

.method private checkCalendarAvailable(Ljava/util/Calendar;IIZ)Z
    .locals 3
    .param p1, "cc"    # Ljava/util/Calendar;
    .param p2, "yearStart"    # I
    .param p3, "yearStop"    # I
    .param p4, "isGregorian"    # Z

    .prologue
    const/4 v1, 0x1

    .line 727
    if-eqz p4, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 728
    .end local p1    # "cc":Ljava/util/Calendar;
    .local v0, "year":I
    :goto_0
    if-gt p2, v0, :cond_1

    if-gt v0, p3, :cond_1

    :goto_1
    return v1

    .line 727
    .end local v0    # "year":I
    .restart local p1    # "cc":Ljava/util/Calendar;
    :cond_0
    check-cast p1, Lcom/zte/mifavor/widget/ChineseCalendar;

    .end local p1    # "cc":Ljava/util/Calendar;
    const/16 v2, 0x321

    invoke-virtual {p1, v2}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v0

    goto :goto_0

    .line 728
    .restart local v0    # "year":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private initValuesForD(Lcom/zte/mifavor/widget/ChineseCalendar;Z)V
    .locals 6
    .param p1, "cc"    # Lcom/zte/mifavor/widget/ChineseCalendar;
    .param p2, "isGregorian"    # Z

    .prologue
    .line 465
    if-eqz p2, :cond_0

    .line 466
    const/4 v3, 0x1

    .line 467
    .local v3, "dayStart":I
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/Util;->getSumOfDayInMonthForGregorianByMonth(II)I

    move-result v4

    .line 468
    .local v4, "dayStop":I
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v2

    .line 469
    .local v2, "daySway":I
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v5, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayDaysGregorian:[Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setValuesForPickerView(Lcom/zte/mifavor/widget/NumberPickerZTE;III[Ljava/lang/String;)V

    .line 476
    :goto_0
    return-void

    .line 471
    .end local v2    # "daySway":I
    .end local v3    # "dayStart":I
    .end local v4    # "dayStop":I
    :cond_0
    const/4 v3, 0x1

    .line 472
    .restart local v3    # "dayStart":I
    const/16 v0, 0x321

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v0

    const/16 v1, 0x322

    invoke-virtual {p1, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/Util;->getSumOfDayInMonthForLunarByMonthLunar(II)I

    move-result v4

    .line 473
    .restart local v4    # "dayStop":I
    const/16 v0, 0x323

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v2

    .line 474
    .restart local v2    # "daySway":I
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v5, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayDaysLunar:[Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setValuesForPickerView(Lcom/zte/mifavor/widget/NumberPickerZTE;III[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initValuesForM(Lcom/zte/mifavor/widget/ChineseCalendar;Z)V
    .locals 7
    .param p1, "cc"    # Lcom/zte/mifavor/widget/ChineseCalendar;
    .param p2, "isGregorian"    # Z

    .prologue
    const/16 v1, 0x322

    .line 437
    const/4 v3, 0x0

    .line 438
    .local v3, "monthStart":I
    const/4 v4, 0x0

    .line 439
    .local v4, "monthStop":I
    const/4 v2, 0x0

    .line 440
    .local v2, "monthSway":I
    const/4 v5, 0x0

    .line 442
    .local v5, "newDisplayedVales":[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 443
    const/4 v3, 0x1

    .line 444
    const/16 v4, 0xc

    .line 445
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 446
    iget-object v5, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayMonthsGregorian:[Ljava/lang/String;

    .line 461
    :goto_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setValuesForPickerView(Lcom/zte/mifavor/widget/NumberPickerZTE;III[Ljava/lang/String;)V

    .line 462
    return-void

    .line 448
    :cond_0
    const/16 v0, 0x321

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v0

    invoke-static {v0}, Lcom/zte/mifavor/widget/Util;->getMonthLeapByYear(I)I

    move-result v6

    .line 449
    .local v6, "monthLeap":I
    if-nez v6, :cond_1

    .line 450
    const/4 v3, 0x1

    .line 451
    const/16 v4, 0xc

    .line 452
    invoke-virtual {p1, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v2

    .line 453
    iget-object v5, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayMonthsLunar:[Ljava/lang/String;

    goto :goto_0

    .line 455
    :cond_1
    const/4 v3, 0x1

    .line 456
    const/16 v4, 0xd

    .line 457
    invoke-virtual {p1, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v0

    invoke-static {v0, v6}, Lcom/zte/mifavor/widget/Util;->convertMonthLunarToMonthSway(II)I

    move-result v2

    .line 458
    invoke-static {v6}, Lcom/zte/mifavor/widget/Util;->getLunarMonthsNamesWithLeap(I)[Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private initValuesForY(Lcom/zte/mifavor/widget/ChineseCalendar;Z)V
    .locals 6
    .param p1, "cc"    # Lcom/zte/mifavor/widget/ChineseCalendar;
    .param p2, "isGregorian"    # Z

    .prologue
    .line 425
    if-eqz p2, :cond_0

    .line 426
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v2

    .line 427
    .local v2, "yearSway":I
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->min_year:I

    iget v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->max_year:I

    iget-object v5, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayYearsGregorian:[Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setValuesForPickerView(Lcom/zte/mifavor/widget/NumberPickerZTE;III[Ljava/lang/String;)V

    .line 432
    :goto_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setWrapSelectorWheel(Z)V

    .line 433
    return-void

    .line 429
    .end local v2    # "yearSway":I
    :cond_0
    const/16 v0, 0x321

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v2

    .line 430
    .restart local v2    # "yearSway":I
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->min_year:I

    iget v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->max_year:I

    iget-object v5, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayYearsLunar:[Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setValuesForPickerView(Lcom/zte/mifavor/widget/NumberPickerZTE;III[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private notifyDateChanged()V
    .locals 4

    .prologue
    .line 533
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mOnDateChangedListener:Lcom/zte/mifavor/widget/GregorianLunarDateView$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 534
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mIsGregorian:Z

    if-nez v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mOnDateChangedListener:Lcom/zte/mifavor/widget/GregorianLunarDateView$OnDateChangedListener;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getMonth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/zte/mifavor/widget/GregorianLunarDateView$OnDateChangedListener;->onDateChanged(Lcom/zte/mifavor/widget/GregorianLunarDateView;III)V

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mOnDateChangedListener:Lcom/zte/mifavor/widget/GregorianLunarDateView$OnDateChangedListener;

    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/zte/mifavor/widget/GregorianLunarDateView$OnDateChangedListener;->onDateChanged(Lcom/zte/mifavor/widget/GregorianLunarDateView;III)V

    goto :goto_0
.end method

.method private passiveUpdateDay(IIIIZ)V
    .locals 8
    .param p1, "oldYear"    # I
    .param p2, "newYear"    # I
    .param p3, "oldMonth"    # I
    .param p4, "newMonth"    # I
    .param p5, "isGregorian"    # Z

    .prologue
    .line 686
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v7

    .line 688
    .local v7, "oldDaySway":I
    invoke-static {p1, p3, p5}, Lcom/zte/mifavor/widget/Util;->getSumOfDayInMonth(IIZ)I

    move-result v6

    .line 689
    .local v6, "oldDayStop":I
    invoke-static {p2, p4, p5}, Lcom/zte/mifavor/widget/Util;->getSumOfDayInMonth(IIZ)I

    move-result v4

    .line 691
    .local v4, "newDayStop":I
    if-ne v6, v4, :cond_0

    .line 696
    :goto_0
    return-void

    .line 694
    :cond_0
    if-gt v7, v4, :cond_1

    move v2, v7

    .line 695
    .local v2, "newDaySway":I
    :goto_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v3, 0x1

    if-eqz p5, :cond_2

    iget-object v5, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayDaysGregorian:[Ljava/lang/String;

    :goto_2
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setValuesForPickerView(Lcom/zte/mifavor/widget/NumberPickerZTE;III[Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "newDaySway":I
    :cond_1
    move v2, v4

    .line 694
    goto :goto_1

    .line 695
    .restart local v2    # "newDaySway":I
    :cond_2
    iget-object v5, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayDaysLunar:[Ljava/lang/String;

    goto :goto_2
.end method

.method private passiveUpdateMonthAndDay(IIZ)V
    .locals 21
    .param p1, "oldYearFix"    # I
    .param p2, "newYearFix"    # I
    .param p3, "isGregorian"    # Z

    .prologue
    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v19

    .line 617
    .local v19, "oldMonthSway":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v16

    .line 619
    .local v16, "oldDaySway":I
    if-eqz p3, :cond_3

    .line 620
    move/from16 v9, v19

    .line 622
    .local v9, "newMonthSway":I
    const/4 v2, 0x1

    move/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1, v2}, Lcom/zte/mifavor/widget/Util;->getSumOfDayInMonth(IIZ)I

    move-result v15

    .line 623
    .local v15, "oldDayStop":I
    const/4 v2, 0x1

    move/from16 v0, p2

    invoke-static {v0, v9, v2}, Lcom/zte/mifavor/widget/Util;->getSumOfDayInMonth(IIZ)I

    move-result v6

    .line 625
    .local v6, "newDayStop":I
    if-ne v15, v6, :cond_1

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    move/from16 v0, v16

    if-gt v0, v6, :cond_2

    move/from16 v4, v16

    .line 629
    .local v4, "newDaySway":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayDaysGregorian:[Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setValuesForPickerView(Lcom/zte/mifavor/widget/NumberPickerZTE;III[Ljava/lang/String;)V

    goto :goto_0

    .end local v4    # "newDaySway":I
    :cond_2
    move v4, v6

    .line 628
    goto :goto_1

    .line 632
    .end local v6    # "newDayStop":I
    .end local v9    # "newMonthSway":I
    .end local v15    # "oldDayStop":I
    :cond_3
    const/4 v9, 0x0

    .line 634
    .restart local v9    # "newMonthSway":I
    invoke-static/range {p2 .. p2}, Lcom/zte/mifavor/widget/Util;->getMonthLeapByYear(I)I

    move-result v14

    .line 635
    .local v14, "newYearFixMonthLeap":I
    invoke-static/range {p1 .. p1}, Lcom/zte/mifavor/widget/Util;->getMonthLeapByYear(I)I

    move-result v20

    .line 637
    .local v20, "oldYearFixMonthLeap":I
    move/from16 v0, v20

    if-ne v14, v0, :cond_5

    .line 639
    move/from16 v9, v19

    .line 641
    invoke-static/range {v19 .. v20}, Lcom/zte/mifavor/widget/Util;->convertMonthSwayToMonthLunar(II)I

    move-result v17

    .line 642
    .local v17, "oldMonthLunar":I
    invoke-static {v9, v14}, Lcom/zte/mifavor/widget/Util;->convertMonthSwayToMonthLunar(II)I

    move-result v13

    .line 643
    .local v13, "newMonthLunar":I
    move/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/Util;->getSumOfDayInMonthForLunarByMonthLunar(II)I

    move-result v15

    .line 644
    .restart local v15    # "oldDayStop":I
    move/from16 v0, p2

    invoke-static {v0, v13}, Lcom/zte/mifavor/widget/Util;->getSumOfDayInMonthForLunarByMonthLunar(II)I

    move-result v6

    .line 646
    .restart local v6    # "newDayStop":I
    if-eq v15, v6, :cond_0

    .line 649
    move/from16 v0, v16

    if-gt v0, v6, :cond_4

    move/from16 v4, v16

    .line 650
    .restart local v4    # "newDaySway":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayDaysLunar:[Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setValuesForPickerView(Lcom/zte/mifavor/widget/NumberPickerZTE;III[Ljava/lang/String;)V

    goto :goto_0

    .end local v4    # "newDaySway":I
    :cond_4
    move v4, v6

    .line 649
    goto :goto_2

    .line 654
    .end local v6    # "newDayStop":I
    .end local v13    # "newMonthLunar":I
    .end local v15    # "oldDayStop":I
    .end local v17    # "oldMonthLunar":I
    :cond_5
    invoke-static {v14}, Lcom/zte/mifavor/widget/Util;->getLunarMonthsNamesWithLeap(I)[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->currDisplayMonthsLunar:[Ljava/lang/String;

    .line 656
    invoke-static/range {v19 .. v20}, Lcom/zte/mifavor/widget/Util;->convertMonthSwayToMonthLunar(II)I

    move-result v17

    .line 657
    .restart local v17    # "oldMonthLunar":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v18

    .line 658
    .local v18, "oldMonthLunarAbs":I
    move/from16 v0, v18

    invoke-static {v0, v14}, Lcom/zte/mifavor/widget/Util;->convertMonthLunarToMonthSway(II)I

    move-result v9

    .line 659
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v10, 0x1

    if-nez v14, :cond_6

    const/16 v11, 0xc

    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->currDisplayMonthsLunar:[Ljava/lang/String;

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setValuesForPickerView(Lcom/zte/mifavor/widget/NumberPickerZTE;III[Ljava/lang/String;)V

    .line 671
    const/4 v2, 0x0

    move/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1, v2}, Lcom/zte/mifavor/widget/Util;->getSumOfDayInMonth(IIZ)I

    move-result v15

    .line 672
    .restart local v15    # "oldDayStop":I
    const/4 v2, 0x0

    move/from16 v0, p2

    invoke-static {v0, v9, v2}, Lcom/zte/mifavor/widget/Util;->getSumOfDayInMonth(IIZ)I

    move-result v6

    .line 673
    .restart local v6    # "newDayStop":I
    if-eq v15, v6, :cond_0

    .line 676
    move/from16 v0, v16

    if-gt v0, v6, :cond_7

    move/from16 v4, v16

    .line 677
    .restart local v4    # "newDaySway":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayDaysLunar:[Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setValuesForPickerView(Lcom/zte/mifavor/widget/NumberPickerZTE;III[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 659
    .end local v4    # "newDaySway":I
    .end local v6    # "newDayStop":I
    .end local v15    # "oldDayStop":I
    :cond_6
    const/16 v11, 0xd

    goto :goto_3

    .restart local v6    # "newDayStop":I
    .restart local v15    # "oldDayStop":I
    :cond_7
    move v4, v6

    .line 676
    goto :goto_4
.end method

.method private reorderSpinners()V
    .locals 5

    .prologue
    .line 581
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 586
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v1

    .line 587
    .local v1, "order":[C
    array-length v2, v1

    .line 588
    .local v2, "spinnerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 589
    aget-char v3, v1, v0

    sparse-switch v3, :sswitch_data_0

    .line 609
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 591
    :sswitch_0
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->space1:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 592
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 593
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->day_lable:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 594
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-direct {p0, v3, v2, v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setImeOptions(Lcom/zte/mifavor/widget/NumberPickerZTE;II)V

    .line 588
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 597
    :sswitch_1
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->space2:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 598
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 599
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->month_lable:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 600
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-direct {p0, v3, v2, v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setImeOptions(Lcom/zte/mifavor/widget/NumberPickerZTE;II)V

    goto :goto_1

    .line 603
    :sswitch_2
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->space3:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 604
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 605
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->year_lable:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 606
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-direct {p0, v3, v2, v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setImeOptions(Lcom/zte/mifavor/widget/NumberPickerZTE;II)V

    goto :goto_1

    .line 613
    :cond_0
    return-void

    .line 589
    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_0
        0x79 -> :sswitch_2
    .end sparse-switch
.end method

.method private setDisplayData(Z)V
    .locals 6
    .param p1, "isGregorian"    # Z

    .prologue
    const/16 v5, 0x1f

    const/16 v4, 0x1e

    const/16 v3, 0xc

    .line 359
    if-eqz p1, :cond_2

    .line 361
    iget v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->max_year:I

    iget v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->min_year:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayYearsGregorian:[Ljava/lang/String;

    .line 362
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->max_year:I

    iget v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->min_year:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayYearsGregorian:[Ljava/lang/String;

    iget v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->min_year:I

    add-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    :cond_0
    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayMonthsGregorian:[Ljava/lang/String;

    .line 369
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 370
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayMonthsGregorian:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 375
    :cond_1
    new-array v1, v5, [Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayDaysGregorian:[Ljava/lang/String;

    .line 376
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v5, :cond_5

    .line 377
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayDaysGregorian:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 383
    .end local v0    # "i":I
    :cond_2
    iget v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->max_year:I

    iget v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->min_year:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayYearsLunar:[Ljava/lang/String;

    .line 384
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->max_year:I

    iget v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->min_year:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_3

    .line 387
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayYearsLunar:[Ljava/lang/String;

    iget v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->min_year:I

    add-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 392
    :cond_3
    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayMonthsLunar:[Ljava/lang/String;

    .line 393
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v3, :cond_4

    .line 394
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayMonthsLunar:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Lcom/zte/mifavor/widget/Util;->getLunarNameOfMonth(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 400
    :cond_4
    new-array v1, v4, [Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayDaysLunar:[Ljava/lang/String;

    .line 401
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v4, :cond_5

    .line 402
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayDaysLunar:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Lcom/zte/mifavor/widget/Util;->getLunarNameOfDay(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 406
    :cond_5
    return-void
.end method

.method private setDisplayValuesForAll(Lcom/zte/mifavor/widget/ChineseCalendar;Z)V
    .locals 0
    .param p1, "cc"    # Lcom/zte/mifavor/widget/ChineseCalendar;
    .param p2, "isGregorian"    # Z

    .prologue
    .line 352
    invoke-direct {p0, p2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setDisplayData(Z)V

    .line 353
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->initValuesForY(Lcom/zte/mifavor/widget/ChineseCalendar;Z)V

    .line 354
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->initValuesForM(Lcom/zte/mifavor/widget/ChineseCalendar;Z)V

    .line 355
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->initValuesForD(Lcom/zte/mifavor/widget/ChineseCalendar;Z)V

    .line 356
    return-void
.end method

.method private setImeOptions(Lcom/zte/mifavor/widget/NumberPickerZTE;II)V
    .locals 3
    .param p1, "spinner"    # Lcom/zte/mifavor/widget/NumberPickerZTE;
    .param p2, "spinnerCount"    # I
    .param p3, "spinnerIndex"    # I

    .prologue
    .line 565
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_0

    .line 566
    const/4 v0, 0x5

    .line 570
    .local v0, "imeOptions":I
    :goto_0
    sget v2, Lcom/zte/extres/R$id;->numberpicker_input:I

    invoke-virtual {p1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 571
    .local v1, "input":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 572
    return-void

    .line 568
    .end local v0    # "imeOptions":I
    .end local v1    # "input":Landroid/widget/TextView;
    :cond_0
    const/4 v0, 0x6

    .restart local v0    # "imeOptions":I
    goto :goto_0
.end method

.method private setValuesForPickerView(Lcom/zte/mifavor/widget/NumberPickerZTE;III[Ljava/lang/String;)V
    .locals 6
    .param p1, "pickerView"    # Lcom/zte/mifavor/widget/NumberPickerZTE;
    .param p2, "newSway"    # I
    .param p3, "newStart"    # I
    .param p4, "newStop"    # I
    .param p5, "newDisplayedVales"    # [Ljava/lang/String;

    .prologue
    .line 480
    if-nez p5, :cond_0

    .line 481
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "newDisplayedVales should not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 482
    :cond_0
    array-length v4, p5

    if-nez v4, :cond_1

    .line 483
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "newDisplayedVales\'s length should not be 0."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 485
    :cond_1
    sub-int v4, p4, p3

    add-int/lit8 v0, v4, 0x1

    .line 486
    .local v0, "newSpan":I
    array-length v4, p5

    if-ge v4, v0, :cond_2

    .line 487
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "newDisplayedVales\'s length should not be less than newSpan."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 490
    :cond_2
    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMinValue()I

    move-result v2

    .line 491
    .local v2, "oldStart":I
    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMaxValue()I

    move-result v3

    .line 492
    .local v3, "oldStop":I
    sub-int v4, v3, v2

    add-int/lit8 v1, v4, 0x1

    .line 493
    .local v1, "oldSpan":I
    invoke-virtual {p1, p3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 495
    if-le v0, v1, :cond_3

    .line 496
    invoke-virtual {p1, p5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 497
    invoke-virtual {p1, p4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 502
    :goto_0
    invoke-virtual {p1, p2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValue(I)V

    .line 503
    return-void

    .line 499
    :cond_3
    invoke-virtual {p1, p4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 500
    invoke-virtual {p1, p5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 548
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 549
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 550
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year_input:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 551
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year_input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 552
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month_input:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 554
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month_input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 555
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 556
    :cond_2
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day_input:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day_input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 558
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method


# virtual methods
.method public getCalendarData()Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;
    .locals 5

    .prologue
    .line 768
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v2

    .line 769
    .local v2, "pickedYear":I
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v1

    .line 770
    .local v1, "pickedMonthSway":I
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v0

    .line 771
    .local v0, "pickedDay":I
    new-instance v3, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;

    iget-boolean v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mIsGregorian:Z

    invoke-direct {v3, v2, v1, v0, v4}, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;-><init>(IIIZ)V

    return-object v3
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 795
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getIsGregorian()Z
    .locals 1

    .prologue
    .line 764
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mIsGregorian:Z

    return v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 791
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getNumberPickerDay()Landroid/view/View;
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    return-object v0
.end method

.method public getNumberPickerMonth()Landroid/view/View;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    return-object v0
.end method

.method public getNumberPickerYear()Landroid/view/View;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    return-object v0
.end method

.method public getPickerDayOfMonth()I
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v0

    return v0
.end method

.method public getPickerMonth()I
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v0

    return v0
.end method

.method public getPickerYear()I
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 787
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILcom/zte/mifavor/widget/GregorianLunarDateView$OnDateChangedListener;)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lcom/zte/mifavor/widget/GregorianLunarDateView$OnDateChangedListener;

    .prologue
    .line 526
    iput-object p4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mOnDateChangedListener:Lcom/zte/mifavor/widget/GregorianLunarDateView$OnDateChangedListener;

    .line 527
    return-void
.end method

.method public initConfigs(Ljava/util/Calendar;Z)V
    .locals 3
    .param p1, "c"    # Ljava/util/Calendar;
    .param p2, "isGregorian"    # Z

    .prologue
    .line 251
    iget v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->min_year:I

    iget v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->max_year:I

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->checkCalendarAvailable(Ljava/util/Calendar;IIZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    iget v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->min_year:I

    iget v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->max_year:I

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->adjustCalendarByLimit(Ljava/util/Calendar;IIZ)Ljava/util/Calendar;

    move-result-object p1

    .line 255
    :cond_0
    iput-boolean p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mIsGregorian:Z

    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "cc":Lcom/zte/mifavor/widget/ChineseCalendar;
    instance-of v1, p1, Lcom/zte/mifavor/widget/ChineseCalendar;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 258
    check-cast v0, Lcom/zte/mifavor/widget/ChineseCalendar;

    .line 263
    :goto_0
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mIsGregorian:Z

    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setDisplayValuesForAll(Lcom/zte/mifavor/widget/ChineseCalendar;Z)V

    .line 264
    return-void

    .line 260
    :cond_1
    new-instance v0, Lcom/zte/mifavor/widget/ChineseCalendar;

    .end local v0    # "cc":Lcom/zte/mifavor/widget/ChineseCalendar;
    invoke-direct {v0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;-><init>(Ljava/util/Calendar;)V

    .restart local v0    # "cc":Lcom/zte/mifavor/widget/ChineseCalendar;
    goto :goto_0
.end method

.method public setColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 293
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mUPdownWhellPaintColor:I

    invoke-virtual {v0, v1, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 295
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mUPdownWhellPaintColor:I

    invoke-virtual {v0, v1, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 296
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mUPdownWhellPaintColor:I

    invoke-virtual {v0, v1, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 297
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->year_lable:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mUPdownWhellPaintColor:I

    iget v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mUPdownWhellPaintColor:I

    invoke-virtual {v0, v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 298
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->month_lable:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mUPdownWhellPaintColor:I

    iget v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mUPdownWhellPaintColor:I

    invoke-virtual {v0, v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 299
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->day_lable:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mUPdownWhellPaintColor:I

    iget v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mUPdownWhellPaintColor:I

    invoke-virtual {v0, v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 311
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mUPdownWhellPaintColor:I

    invoke-virtual {v0, v1, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 302
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mUPdownWhellPaintColor:I

    invoke-virtual {v0, v1, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 303
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mUPdownWhellPaintColor:I

    invoke-virtual {v0, v1, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 304
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->year_lable:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mTransparentPaintColor:I

    iget v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mTransparentPaintColor:I

    invoke-virtual {v0, v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 305
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->month_lable:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mTransparentPaintColor:I

    iget v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mTransparentPaintColor:I

    invoke-virtual {v0, v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 306
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->day_lable:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mTransparentPaintColor:I

    iget v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mTransparentPaintColor:I

    invoke-virtual {v0, v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    goto :goto_0
.end method

.method public setDisplayDayLunar(I)V
    .locals 3
    .param p1, "max_day"    # I

    .prologue
    .line 418
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayDaysLunar:[Ljava/lang/String;

    .line 419
    new-array v1, p1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayDaysLunar:[Ljava/lang/String;

    .line 420
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayDaysLunar:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Lcom/zte/mifavor/widget/Util;->getLunarNameOfDay(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 423
    :cond_0
    return-void
.end method

.method public setDisplayMonthsLunar(I)V
    .locals 3
    .param p1, "max_month"    # I

    .prologue
    .line 410
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayMonthsLunar:[Ljava/lang/String;

    .line 411
    new-array v1, p1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayMonthsLunar:[Ljava/lang/String;

    .line 412
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayMonthsLunar:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Lcom/zte/mifavor/widget/Util;->getLunarNameOfMonth(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    :cond_0
    return-void
.end method

.method public setForceUpdate(Z)V
    .locals 0
    .param p1, "forceupdate"    # Z

    .prologue
    .line 333
    sput-boolean p1, Lcom/zte/mifavor/widget/GregorianLunarDateView;->force:Z

    .line 335
    return-void
.end method

.method public setGregorian(Z)V
    .locals 2
    .param p1, "isGregorian"    # Z

    .prologue
    .line 701
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mIsGregorian:Z

    if-ne v0, p1, :cond_1

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->updateView(Z)V

    goto :goto_0
.end method

.method public setMaxYear(I)V
    .locals 0
    .param p1, "endYear"    # I

    .prologue
    .line 323
    iput p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->max_year:I

    .line 325
    return-void
.end method

.method public setMinYear(I)V
    .locals 0
    .param p1, "startYear"    # I

    .prologue
    .line 328
    iput p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->min_year:I

    .line 330
    return-void
.end method

.method public setNumberPickerDayVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 752
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p0, v0, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setNumberPickerVisibility(Lcom/zte/mifavor/widget/NumberPickerZTE;I)V

    .line 753
    return-void
.end method

.method public setNumberPickerMonthVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 748
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p0, v0, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setNumberPickerVisibility(Lcom/zte/mifavor/widget/NumberPickerZTE;I)V

    .line 749
    return-void
.end method

.method public setNumberPickerVisibility(Lcom/zte/mifavor/widget/NumberPickerZTE;I)V
    .locals 1
    .param p1, "view"    # Lcom/zte/mifavor/widget/NumberPickerZTE;
    .param p2, "visibility"    # I

    .prologue
    .line 756
    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getVisibility()I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 758
    :cond_1
    const/16 v0, 0x8

    if-eq p2, v0, :cond_2

    if-eqz p2, :cond_2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 759
    :cond_2
    invoke-virtual {p1, p2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setVisibility(I)V

    goto :goto_0
.end method

.method public setNumberPickerYearVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 744
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p0, v0, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setNumberPickerVisibility(Lcom/zte/mifavor/widget/NumberPickerZTE;I)V

    .line 745
    return-void
.end method

.method public setSwitchShown(Z)V
    .locals 3
    .param p1, "shown"    # Z

    .prologue
    const/16 v0, 0x8

    .line 314
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mLunarChoice:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mLunarChoice:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateCurrentDate(III)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 245
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 246
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 247
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 248
    return-void
.end method

.method public updateView(Z)V
    .locals 5
    .param p1, "isGregorian"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 713
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getCalendarData()Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/ChineseCalendar;

    .line 714
    .local v0, "cc":Lcom/zte/mifavor/widget/ChineseCalendar;
    iget v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->min_year:I

    iget v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->max_year:I

    invoke-direct {p0, v0, v3, v4, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->checkCalendarAvailable(Ljava/util/Calendar;IIZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 715
    iget v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->min_year:I

    iget v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->max_year:I

    invoke-direct {p0, v0, v3, v4, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->adjustCalendarByLimit(Ljava/util/Calendar;IIZ)Ljava/util/Calendar;

    move-result-object v0

    .end local v0    # "cc":Lcom/zte/mifavor/widget/ChineseCalendar;
    check-cast v0, Lcom/zte/mifavor/widget/ChineseCalendar;

    .line 717
    .restart local v0    # "cc":Lcom/zte/mifavor/widget/ChineseCalendar;
    :cond_0
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mIsGregorian:Z

    .line 718
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mStateMachineEvent:Z

    .line 719
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mSwitch:Lcom/zte/mifavor/widget/SwitchZTE;

    iget-boolean v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mIsGregorian:Z

    if-nez v4, :cond_1

    :goto_0
    invoke-virtual {v3, v1}, Lcom/zte/mifavor/widget/SwitchZTE;->setChecked(Z)V

    .line 720
    iput-boolean v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mStateMachineEvent:Z

    .line 722
    invoke-virtual {p0, v0, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->initConfigs(Ljava/util/Calendar;Z)V

    .line 724
    return-void

    :cond_1
    move v1, v2

    .line 719
    goto :goto_0
.end method
