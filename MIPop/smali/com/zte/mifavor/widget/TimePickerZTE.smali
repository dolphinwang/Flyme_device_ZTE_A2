.class public Lcom/zte/mifavor/widget/TimePickerZTE;
.super Landroid/widget/FrameLayout;
.source "TimePickerZTE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;,
        Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final NO_OP_CHANGE_LISTENER:Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private final mAmPmSpinnerInput:Landroid/widget/EditText;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private mHourFormat:C

.field private final mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private final mHourSpinnerInput:Landroid/widget/EditText;

.field private mHourWithTwoDigit:Z

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private final mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private final mMinuteSpinnerInput:Landroid/widget/EditText;

.field private mOnTimeChangedListener:Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;

.field private mSelectorWhellPaintColor:I

.field private mTempCalendar:Ljava/util/Calendar;

.field private mUPdownWhellPaintColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/zte/mifavor/widget/TimePickerZTE$1;

    invoke-direct {v0}, Lcom/zte/mifavor/widget/TimePickerZTE$1;-><init>()V

    sput-object v0, Lcom/zte/mifavor/widget/TimePickerZTE;->NO_OP_CHANGE_LISTENER:Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/TimePickerZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/TimePickerZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIsEnabled:Z

    .line 124
    const v8, -0xe5b03d

    iput v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mSelectorWhellPaintColor:I

    .line 125
    const/high16 v8, -0x76000000

    iput v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mUPdownWhellPaintColor:I

    .line 152
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentLocale(Ljava/util/Locale;)V

    .line 160
    sget v5, Lcom/zte/extres/R$layout;->time_picker_zte:I

    .line 162
    .local v5, "layoutResourceId":I
    const-string v8, "layout_inflater"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 164
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const/4 v8, 0x1

    invoke-virtual {v4, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 167
    sget v8, Lcom/zte/extres/R$id;->hour:I

    invoke-virtual {p0, v8}, Lcom/zte/mifavor/widget/TimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/zte/mifavor/widget/NumberPickerZTE;

    iput-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 168
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v9, 0x19

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 169
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v9, 0x12

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setSelectorSize(I)V

    .line 170
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v9, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mUPdownWhellPaintColor:I

    iget v10, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mSelectorWhellPaintColor:I

    invoke-virtual {v8, v9, v10}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 172
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    new-instance v9, Lcom/zte/mifavor/widget/TimePickerZTE$2;

    invoke-direct {v9, p0}, Lcom/zte/mifavor/widget/TimePickerZTE$2;-><init>(Lcom/zte/mifavor/widget/TimePickerZTE;)V

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnValueChangedListener(Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;)V

    .line 185
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v9, Lcom/zte/extres/R$id;->numberpicker_input:I

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinnerInput:Landroid/widget/EditText;

    .line 186
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinnerInput:Landroid/widget/EditText;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 189
    sget v8, Lcom/zte/extres/R$id;->divider:I

    invoke-virtual {p0, v8}, Lcom/zte/mifavor/widget/TimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/zte/mifavor/widget/NumberPickerZTE;

    iput-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 190
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v9, 0x19

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 191
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 192
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 193
    const/4 v8, 0x1

    new-array v2, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, ":"

    aput-object v9, v2, v8

    .line 194
    .local v2, "divider":[Ljava/lang/String;
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v8, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 195
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setFocusable(Z)V

    .line 196
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 197
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v9, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mUPdownWhellPaintColor:I

    iget v10, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mSelectorWhellPaintColor:I

    invoke-virtual {v8, v9, v10}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 200
    sget v8, Lcom/zte/extres/R$id;->minute:I

    invoke-virtual {p0, v8}, Lcom/zte/mifavor/widget/TimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/zte/mifavor/widget/NumberPickerZTE;

    iput-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 201
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v9, 0x19

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 202
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v9, 0x12

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setSelectorSize(I)V

    .line 203
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v9, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mUPdownWhellPaintColor:I

    iget v10, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mSelectorWhellPaintColor:I

    invoke-virtual {v8, v9, v10}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 205
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 206
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v9, 0x3b

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 207
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v10, v11}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnLongPressUpdateInterval(J)V

    .line 208
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getTwoDigitFormatter()Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setFormatter(Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;)V

    .line 209
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    new-instance v9, Lcom/zte/mifavor/widget/TimePickerZTE$3;

    invoke-direct {v9, p0}, Lcom/zte/mifavor/widget/TimePickerZTE$3;-><init>(Lcom/zte/mifavor/widget/TimePickerZTE;)V

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnValueChangedListener(Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;)V

    .line 234
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v9, Lcom/zte/extres/R$id;->numberpicker_input:I

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinnerInput:Landroid/widget/EditText;

    .line 235
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 238
    new-instance v8, Ljava/text/DateFormatSymbols;

    invoke-direct {v8}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v8}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmStrings:[Ljava/lang/String;

    .line 246
    sget v8, Lcom/zte/extres/R$id;->amPm:I

    invoke-virtual {p0, v8}, Lcom/zte/mifavor/widget/TimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 247
    .local v1, "amPmView":Landroid/view/View;
    instance-of v8, v1, Landroid/widget/Button;

    if-eqz v8, :cond_3

    .line 248
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 249
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinnerInput:Landroid/widget/EditText;

    move-object v8, v1

    .line 250
    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    .line 251
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    new-instance v9, Lcom/zte/mifavor/widget/TimePickerZTE$4;

    invoke-direct {v9, p0}, Lcom/zte/mifavor/widget/TimePickerZTE$4;-><init>(Lcom/zte/mifavor/widget/TimePickerZTE;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    :goto_0
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->isAmPmAtStart()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 284
    sget v8, Lcom/zte/extres/R$id;->timePickerLayout:I

    invoke-virtual {p0, v8}, Lcom/zte/mifavor/widget/TimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 285
    .local v0, "amPmParent":Landroid/view/ViewGroup;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 286
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 289
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 290
    .local v6, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v6}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v7

    .line 291
    .local v7, "startMargin":I
    invoke-virtual {v6}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    .line 292
    .local v3, "endMargin":I
    if-eq v7, v3, :cond_0

    .line 293
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 294
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 298
    .end local v0    # "amPmParent":Landroid/view/ViewGroup;
    .end local v3    # "endMargin":I
    .end local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v7    # "startMargin":I
    :cond_0
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getHourFormatData()V

    .line 301
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->updateHourControl()V

    .line 302
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->updateMinuteControl()V

    .line 303
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->updateAmPmControl()V

    .line 305
    sget-object v8, Lcom/zte/mifavor/widget/TimePickerZTE;->NO_OP_CHANGE_LISTENER:Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;

    invoke-virtual {p0, v8}, Lcom/zte/mifavor/widget/TimePickerZTE;->setOnTimeChangedListener(Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;)V

    .line 308
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mTempCalendar:Ljava/util/Calendar;

    const/16 v9, 0xb

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentHour(Ljava/lang/Integer;)V

    .line 309
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mTempCalendar:Ljava/util/Calendar;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 311
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_1

    .line 312
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/zte/mifavor/widget/TimePickerZTE;->setEnabled(Z)V

    .line 319
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getImportantForAccessibility()I

    move-result v8

    if-nez v8, :cond_2

    .line 320
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/zte/mifavor/widget/TimePickerZTE;->setImportantForAccessibility(I)V

    .line 322
    :cond_2
    return-void

    .line 260
    :cond_3
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    move-object v8, v1

    .line 261
    check-cast v8, Lcom/zte/mifavor/widget/NumberPickerZTE;

    iput-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 262
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v9, 0x19

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 263
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v9, 0x12

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setSelectorSize(I)V

    .line 264
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v9, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mUPdownWhellPaintColor:I

    iget v10, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mSelectorWhellPaintColor:I

    invoke-virtual {v8, v9, v10}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 266
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 267
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 268
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v9, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 269
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    new-instance v9, Lcom/zte/mifavor/widget/TimePickerZTE$5;

    invoke-direct {v9, p0}, Lcom/zte/mifavor/widget/TimePickerZTE$5;-><init>(Lcom/zte/mifavor/widget/TimePickerZTE;)V

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnValueChangedListener(Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;)V

    .line 278
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v9, Lcom/zte/extres/R$id;->numberpicker_input:I

    invoke-virtual {v8, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 279
    iget-object v8, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/TimePickerZTE;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/TimePickerZTE;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/TimePickerZTE;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/TimePickerZTE;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIsAm:Z

    return v0
.end method

.method static synthetic access$102(Lcom/zte/mifavor/widget/TimePickerZTE;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/TimePickerZTE;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIsAm:Z

    return p1
.end method

.method static synthetic access$200(Lcom/zte/mifavor/widget/TimePickerZTE;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/TimePickerZTE;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$300(Lcom/zte/mifavor/widget/TimePickerZTE;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/TimePickerZTE;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/mifavor/widget/TimePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/TimePickerZTE;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    return-object v0
.end method

.method private getHourFormatData()V
    .locals 7

    .prologue
    .line 334
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 335
    .local v2, "defaultLocale":Ljava/util/Locale;
    iget-boolean v6, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIs24HourView:Z

    if-eqz v6, :cond_2

    const-string v6, "Hm"

    :goto_0
    invoke-static {v2, v6}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 338
    .local v5, "lengthPattern":I
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourWithTwoDigit:Z

    .line 339
    const/4 v3, 0x0

    .line 343
    .local v3, "hourFormat":C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_1

    .line 344
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 345
    .local v1, "c":C
    const/16 v6, 0x48

    if-eq v1, v6, :cond_0

    const/16 v6, 0x68

    if-eq v1, v6, :cond_0

    const/16 v6, 0x4b

    if-eq v1, v6, :cond_0

    const/16 v6, 0x6b

    if-ne v1, v6, :cond_3

    .line 346
    :cond_0
    iput-char v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourFormat:C

    .line 347
    add-int/lit8 v6, v4, 0x1

    if-ge v6, v5, :cond_1

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v1, v6, :cond_1

    .line 348
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourWithTwoDigit:Z

    .line 353
    .end local v1    # "c":C
    :cond_1
    return-void

    .line 335
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v3    # "hourFormat":C
    .end local v4    # "i":I
    .end local v5    # "lengthPattern":I
    :cond_2
    const-string v6, "hm"

    goto :goto_0

    .line 343
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v1    # "c":C
    .restart local v3    # "hourFormat":C
    .restart local v4    # "i":I
    .restart local v5    # "lengthPattern":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private isAmPmAtStart()Z
    .locals 3

    .prologue
    .line 356
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 357
    .local v1, "defaultLocale":Ljava/util/Locale;
    const-string v2, "hm"

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const-string v2, "a"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private onTimeChanged()V
    .locals 3

    .prologue
    .line 696
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->sendAccessibilityEvent(I)V

    .line 697
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mOnTimeChangedListener:Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mOnTimeChangedListener:Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;->onTimeChanged(Lcom/zte/mifavor/widget/TimePickerZTE;II)V

    .line 700
    :cond_0
    return-void
.end method

.method private setContentDescriptions()V
    .locals 3

    .prologue
    .line 704
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->increment:I

    sget v2, Lcom/zte/extres/R$string;->time_picker_increment_minute_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/TimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 706
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->decrement:I

    sget v2, Lcom/zte/extres/R$string;->time_picker_decrement_minute_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/TimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 709
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->increment:I

    sget v2, Lcom/zte/extres/R$string;->time_picker_increment_hour_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/TimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 711
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->decrement:I

    sget v2, Lcom/zte/extres/R$string;->time_picker_decrement_hour_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/TimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 714
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->increment:I

    sget v2, Lcom/zte/extres/R$string;->time_picker_increment_set_pm_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/TimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 717
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->decrement:I

    sget v2, Lcom/zte/extres/R$string;->time_picker_decrement_set_am_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/TimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 720
    :cond_0
    return-void
.end method

.method private setCurrentHour(Ljava/lang/Integer;Z)V
    .locals 2
    .param p1, "currentHour"    # Ljava/lang/Integer;
    .param p2, "notifyTimeChanged"    # Z

    .prologue
    const/16 v1, 0xc

    .line 500
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 505
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 506
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIsAm:Z

    .line 507
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 508
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 516
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->updateAmPmControl()V

    .line 518
    :cond_3
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValue(I)V

    .line 519
    if-eqz p2, :cond_0

    .line 520
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->onTimeChanged()V

    goto :goto_0

    .line 511
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIsAm:Z

    .line 512
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 513
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    :goto_0
    return-void

    .line 402
    :cond_0
    iput-object p1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mCurrentLocale:Ljava/util/Locale;

    .line 403
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mTempCalendar:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private setDividerText()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 581
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 582
    .local v1, "defaultLocale":Ljava/util/Locale;
    iget-boolean v6, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIs24HourView:Z

    if-eqz v6, :cond_1

    const-string v5, "Hm"

    .line 583
    .local v5, "skeleton":Ljava/lang/String;
    :goto_0
    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const/16 v6, 0x48

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 587
    .local v2, "hourIndex":I
    if-ne v2, v8, :cond_0

    .line 588
    const/16 v6, 0x68

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 590
    :cond_0
    if-ne v2, v8, :cond_2

    .line 592
    const-string v4, ":"

    .line 602
    .local v4, "separatorText":Ljava/lang/String;
    :goto_1
    return-void

    .line 582
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v2    # "hourIndex":I
    .end local v4    # "separatorText":Ljava/lang/String;
    .end local v5    # "skeleton":Ljava/lang/String;
    :cond_1
    const-string v5, "hm"

    goto :goto_0

    .line 594
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v2    # "hourIndex":I
    .restart local v5    # "skeleton":Ljava/lang/String;
    :cond_2
    const/16 v6, 0x6d

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 595
    .local v3, "minuteIndex":I
    if-ne v3, v8, :cond_3

    .line 596
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "separatorText":Ljava/lang/String;
    goto :goto_1

    .line 598
    .end local v4    # "separatorText":Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "separatorText":Ljava/lang/String;
    goto :goto_1
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "contDescResId"    # I

    .prologue
    .line 723
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 724
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 725
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 727
    :cond_0
    return-void
.end method

.method private updateAmPmControl()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 676
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->is24HourView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 677
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    if-eqz v1, :cond_0

    .line 678
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setVisibility(I)V

    .line 692
    :goto_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/TimePickerZTE;->sendAccessibilityEvent(I)V

    .line 693
    return-void

    .line 680
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 683
    :cond_1
    iget-boolean v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIsAm:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 684
    .local v0, "index":I
    :goto_1
    iget-object v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    if-eqz v2, :cond_3

    .line 685
    iget-object v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValue(I)V

    .line 686
    iget-object v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setVisibility(I)V

    goto :goto_0

    .line 683
    .end local v0    # "index":I
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 688
    .restart local v0    # "index":I
    :cond_3
    iget-object v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmStrings:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 689
    iget-object v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateHourControl()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 645
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 647
    iget-char v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourFormat:C

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_0

    .line 648
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 649
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 664
    :goto_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-boolean v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourWithTwoDigit:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getTwoDigitFormatter()Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setFormatter(Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;)V

    .line 665
    return-void

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 652
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    goto :goto_0

    .line 656
    :cond_1
    iget-char v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourFormat:C

    const/16 v1, 0x4b

    if-ne v0, v1, :cond_2

    .line 657
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 658
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    goto :goto_0

    .line 660
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 661
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    goto :goto_0

    .line 664
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 735
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 736
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 737
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 738
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 739
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 741
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 742
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 743
    :cond_2
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 745
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private updateMinuteControl()V
    .locals 2

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 673
    :goto_0
    return-void

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 611
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/TimePickerZTE;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 612
    const/4 v0, 0x1

    return v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 481
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v0

    .line 482
    .local v0, "currentHour":I
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 487
    :goto_0
    return-object v1

    .line 484
    :cond_0
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 485
    rem-int/lit8 v1, v0, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 487
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 389
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 390
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentLocale(Ljava/util/Locale;)V

    .line 391
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 634
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 635
    const-class v0, Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 636
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 640
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 641
    const-class v0, Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 642
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 617
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 619
    const/4 v0, 0x1

    .line 620
    .local v0, "flags":I
    iget-boolean v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIs24HourView:Z

    if-eqz v2, :cond_0

    .line 621
    or-int/lit16 v0, v0, 0x80

    .line 625
    :goto_0
    iget-object v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 626
    iget-object v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 627
    iget-object v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 629
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    return-void

    .line 623
    .end local v1    # "selectedDateUtterance":Ljava/lang/String;
    :cond_0
    or-int/lit8 v0, v0, 0x40

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 462
    move-object v0, p1

    check-cast v0, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;

    .line 463
    .local v0, "ss":Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 464
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentHour(Ljava/lang/Integer;)V

    .line 465
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;->getMinute()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 466
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 456
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 457
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;-><init>(Landroid/os/Parcelable;IILcom/zte/mifavor/widget/TimePickerZTE$1;)V

    return-object v1
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mUPdownWhellPaintColor:I

    invoke-virtual {v0, v1, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 327
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mUPdownWhellPaintColor:I

    invoke-virtual {v0, v1, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 328
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mUPdownWhellPaintColor:I

    invoke-virtual {v0, v1, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 329
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mUPdownWhellPaintColor:I

    invoke-virtual {v0, v1, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 330
    return-void
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    .line 495
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentHour(Ljava/lang/Integer;Z)V

    .line 496
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentMinute"    # Ljava/lang/Integer;

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 570
    :goto_0
    return-void

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValue(I)V

    .line 569
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->onTimeChanged()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 380
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 369
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 370
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 374
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    if-eqz v0, :cond_2

    .line 375
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 379
    :goto_1
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIsEnabled:Z

    goto :goto_0

    .line 377
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .prologue
    .line 530
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 545
    :goto_0
    return-void

    .line 534
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 536
    .local v0, "currentHour":I
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIs24HourView:Z

    .line 537
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getHourFormatData()V

    .line 538
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->updateHourControl()V

    .line 542
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentHour(Ljava/lang/Integer;Z)V

    .line 543
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->updateMinuteControl()V

    .line 544
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->updateAmPmControl()V

    goto :goto_0
.end method

.method public setOnTimeChangedListener(Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;)V
    .locals 0
    .param p1, "onTimeChangedListener"    # Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mOnTimeChangedListener:Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;

    .line 475
    return-void
.end method
