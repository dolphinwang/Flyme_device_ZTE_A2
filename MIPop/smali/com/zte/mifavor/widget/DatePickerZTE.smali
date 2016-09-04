.class public Lcom/zte/mifavor/widget/DatePickerZTE;
.super Landroid/widget/FrameLayout;
.source "DatePickerZTE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;,
        Lcom/zte/mifavor/widget/DatePickerZTE$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = true

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mCalendarView:Landroid/widget/CalendarView;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private final mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mIsEnabled:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private final mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mOnDateChangedListener:Lcom/zte/mifavor/widget/DatePickerZTE$OnDateChangedListener;

.field private mSelectorWhellPaintColor:I

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Ljava/util/Calendar;

.field private mUPdownWhellPaintColor:I

.field private final mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-class v0, Lcom/zte/mifavor/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/mifavor/widget/DatePickerZTE;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/DatePickerZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 156
    sget v0, Lcom/zte/extres/R$attr;->datePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/DatePickerZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 160
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v15, "MM/dd/yyyy"

    invoke-direct {v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mDateFormat:Ljava/text/DateFormat;

    .line 131
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mIsEnabled:Z

    .line 132
    const v14, -0xe5b03d

    move-object/from16 v0, p0

    iput v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mSelectorWhellPaintColor:I

    .line 133
    const/high16 v14, -0x76000000

    move-object/from16 v0, p0

    iput v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mUPdownWhellPaintColor:I

    .line 163
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/zte/mifavor/widget/DatePickerZTE;->setCurrentLocale(Ljava/util/Locale;)V

    .line 165
    sget-object v14, Lcom/zte/extres/R$styleable;->DatePicker:[I

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v14, v2, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 167
    .local v4, "attributesArray":Landroid/content/res/TypedArray;
    sget v14, Lcom/zte/extres/R$styleable;->DatePicker_spinnersShown:I

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 169
    .local v12, "spinnersShown":Z
    sget v14, Lcom/zte/extres/R$styleable;->DatePicker_calendarViewShown:I

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 171
    .local v5, "calendarViewShown":Z
    sget v14, Lcom/zte/extres/R$styleable;->DatePicker_startYear:I

    const/16 v15, 0x76c

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 173
    .local v13, "startYear":I
    sget v14, Lcom/zte/extres/R$styleable;->DatePicker_endYear:I

    const/16 v15, 0x834

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 174
    .local v6, "endYear":I
    sget v14, Lcom/zte/extres/R$styleable;->DatePicker_minDate:I

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 175
    .local v10, "minDate":Ljava/lang/String;
    sget v14, Lcom/zte/extres/R$styleable;->DatePicker_maxDate:I

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 178
    .local v9, "maxDate":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 180
    const/4 v5, 0x0

    .line 184
    sget v8, Lcom/zte/extres/R$layout;->date_picker_zte:I

    .line 185
    .local v8, "layoutResourceId":I
    const-string v14, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 187
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v7, v8, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 189
    new-instance v11, Lcom/zte/mifavor/widget/DatePickerZTE$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/zte/mifavor/widget/DatePickerZTE$1;-><init>(Lcom/zte/mifavor/widget/DatePickerZTE;)V

    .line 225
    .local v11, "onChangeListener":Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;
    sget v14, Lcom/zte/extres/R$id;->pickers:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/zte/mifavor/widget/DatePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mSpinners:Landroid/widget/LinearLayout;

    .line 228
    sget v14, Lcom/zte/extres/R$id;->calendar_view:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/zte/mifavor/widget/DatePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/CalendarView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

    .line 229
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

    new-instance v15, Lcom/zte/mifavor/widget/DatePickerZTE$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/zte/mifavor/widget/DatePickerZTE$2;-><init>(Lcom/zte/mifavor/widget/DatePickerZTE;)V

    invoke-virtual {v14, v15}, Landroid/widget/CalendarView;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    .line 238
    sget v14, Lcom/zte/extres/R$id;->day:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/zte/mifavor/widget/DatePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 239
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v15, 0x19

    invoke-virtual {v14, v15}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 240
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v15, 0x12

    invoke-virtual {v14, v15}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setSelectorSize(I)V

    .line 241
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mUPdownWhellPaintColor:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mSelectorWhellPaintColor:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 243
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getTwoDigitFormatter()Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setFormatter(Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const-wide/16 v16, 0x64

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnLongPressUpdateInterval(J)V

    .line 245
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v14, v11}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnValueChangedListener(Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v15, Lcom/zte/extres/R$id;->numberpicker_input:I

    invoke-virtual {v14, v15}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 249
    sget v14, Lcom/zte/extres/R$id;->month:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/zte/mifavor/widget/DatePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 250
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v15, 0x19

    invoke-virtual {v14, v15}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 251
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v15, 0x12

    invoke-virtual {v14, v15}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setSelectorSize(I)V

    .line 252
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mUPdownWhellPaintColor:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mSelectorWhellPaintColor:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 254
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 255
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mNumberOfMonths:I

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 256
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const-wide/16 v16, 0xc8

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnLongPressUpdateInterval(J)V

    .line 258
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v14, v11}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnValueChangedListener(Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v15, Lcom/zte/extres/R$id;->numberpicker_input:I

    invoke-virtual {v14, v15}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 262
    sget v14, Lcom/zte/extres/R$id;->year:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/zte/mifavor/widget/DatePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 263
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v15, 0x19

    invoke-virtual {v14, v15}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 264
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v15, 0x12

    invoke-virtual {v14, v15}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setSelectorSize(I)V

    .line 265
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mUPdownWhellPaintColor:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mSelectorWhellPaintColor:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 267
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const-wide/16 v16, 0x64

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnLongPressUpdateInterval(J)V

    .line 268
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v14, v11}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnValueChangedListener(Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v15, Lcom/zte/extres/R$id;->numberpicker_input:I

    invoke-virtual {v14, v15}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 273
    if-nez v12, :cond_3

    if-nez v5, :cond_3

    .line 274
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/zte/mifavor/widget/DatePickerZTE;->setSpinnersShown(Z)V

    .line 281
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v14}, Ljava/util/Calendar;->clear()V

    .line 282
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 283
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v14}, Lcom/zte/mifavor/widget/DatePickerZTE;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 284
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mTempDate:Ljava/util/Calendar;

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v13, v15, v0}, Ljava/util/Calendar;->set(III)V

    .line 289
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/zte/mifavor/widget/DatePickerZTE;->setMinDate(J)V

    .line 292
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v14}, Ljava/util/Calendar;->clear()V

    .line 293
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 294
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14}, Lcom/zte/mifavor/widget/DatePickerZTE;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 295
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mTempDate:Ljava/util/Calendar;

    const/16 v15, 0xb

    const/16 v16, 0x1f

    move/from16 v0, v16

    invoke-virtual {v14, v6, v15, v0}, Ljava/util/Calendar;->set(III)V

    .line 300
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/zte/mifavor/widget/DatePickerZTE;->setMaxDate(J)V

    .line 303
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 304
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Ljava/util/Calendar;->get(I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v16, v0

    const/16 v17, 0x5

    invoke-virtual/range {v16 .. v17}, Ljava/util/Calendar;->get(I)I

    move-result v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v14, v15, v1, v2}, Lcom/zte/mifavor/widget/DatePickerZTE;->init(IIILcom/zte/mifavor/widget/DatePickerZTE$OnDateChangedListener;)V

    .line 308
    invoke-direct/range {p0 .. p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->reorderSpinners()V

    .line 311
    invoke-direct/range {p0 .. p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->setContentDescriptions()V

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->getImportantForAccessibility()I

    move-result v14

    if-nez v14, :cond_2

    .line 315
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/zte/mifavor/widget/DatePickerZTE;->setImportantForAccessibility(I)V

    .line 317
    :cond_2
    return-void

    .line 276
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/zte/mifavor/widget/DatePickerZTE;->setSpinnersShown(Z)V

    .line 277
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/zte/mifavor/widget/DatePickerZTE;->setCalendarViewShown(Z)V

    goto/16 :goto_0

    .line 287
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mTempDate:Ljava/util/Calendar;

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v13, v15, v0}, Ljava/util/Calendar;->set(III)V

    goto/16 :goto_1

    .line 298
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/DatePickerZTE;->mTempDate:Ljava/util/Calendar;

    const/16 v15, 0xb

    const/16 v16, 0x1f

    move/from16 v0, v16

    invoke-virtual {v14, v6, v15, v0}, Ljava/util/Calendar;->set(III)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/DatePickerZTE;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/DatePickerZTE;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/DatePickerZTE;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/DatePickerZTE;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/mifavor/widget/DatePickerZTE;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/DatePickerZTE;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/mifavor/widget/DatePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/DatePickerZTE;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/mifavor/widget/DatePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/DatePickerZTE;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/mifavor/widget/DatePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/DatePickerZTE;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/mifavor/widget/DatePickerZTE;III)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/DatePickerZTE;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/DatePickerZTE;->setDate(III)V

    return-void
.end method

.method static synthetic access$700(Lcom/zte/mifavor/widget/DatePickerZTE;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/DatePickerZTE;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->updateSpinners()V

    return-void
.end method

.method static synthetic access$800(Lcom/zte/mifavor/widget/DatePickerZTE;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/DatePickerZTE;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->updateCalendarView()V

    return-void
.end method

.method static synthetic access$900(Lcom/zte/mifavor/widget/DatePickerZTE;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/DatePickerZTE;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->notifyDateChanged()V

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 545
    if-nez p1, :cond_0

    .line 546
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 551
    :goto_0
    return-object v2

    .line 548
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 549
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 550
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private isNewDate(III)Z
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v0, 0x1

    .line 661
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p3, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyDateChanged()V
    .locals 4

    .prologue
    .line 756
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/DatePickerZTE;->sendAccessibilityEvent(I)V

    .line 757
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mOnDateChangedListener:Lcom/zte/mifavor/widget/DatePickerZTE$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mOnDateChangedListener:Lcom/zte/mifavor/widget/DatePickerZTE$OnDateChangedListener;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/zte/mifavor/widget/DatePickerZTE$OnDateChangedListener;->onDateChanged(Lcom/zte/mifavor/widget/DatePickerZTE;III)V

    .line 760
    :cond_0
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 4
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "outDate"    # Ljava/util/Calendar;

    .prologue
    .line 652
    :try_start_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    const/4 v1, 0x1

    .line 656
    :goto_0
    return v1

    .line 654
    :catch_0
    move-exception v0

    .line 655
    .local v0, "e":Ljava/text/ParseException;
    sget-object v1, Lcom/zte/mifavor/widget/DatePickerZTE;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MM/dd/yyyy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private reorderSpinners()V
    .locals 5

    .prologue
    .line 561
    iget-object v3, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 566
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v1

    .line 567
    .local v1, "order":[C
    array-length v2, v1

    .line 568
    .local v2, "spinnerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 569
    aget-char v3, v1, v0

    sparse-switch v3, :sswitch_data_0

    .line 583
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 571
    :sswitch_0
    iget-object v3, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 572
    iget-object v3, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-direct {p0, v3, v2, v0}, Lcom/zte/mifavor/widget/DatePickerZTE;->setImeOptions(Lcom/zte/mifavor/widget/NumberPickerZTE;II)V

    .line 568
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 575
    :sswitch_1
    iget-object v3, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 576
    iget-object v3, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-direct {p0, v3, v2, v0}, Lcom/zte/mifavor/widget/DatePickerZTE;->setImeOptions(Lcom/zte/mifavor/widget/NumberPickerZTE;II)V

    goto :goto_1

    .line 579
    :sswitch_2
    iget-object v3, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 580
    iget-object v3, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-direct {p0, v3, v2, v0}, Lcom/zte/mifavor/widget/DatePickerZTE;->setImeOptions(Lcom/zte/mifavor/widget/NumberPickerZTE;II)V

    goto :goto_1

    .line 586
    :cond_0
    return-void

    .line 569
    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_0
        0x79 -> :sswitch_2
    .end sparse-switch
.end method

.method private setContentDescriptions()V
    .locals 3

    .prologue
    .line 782
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->increment:I

    sget v2, Lcom/zte/extres/R$string;->date_picker_increment_day_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/DatePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 784
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->decrement:I

    sget v2, Lcom/zte/extres/R$string;->date_picker_decrement_day_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/DatePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 787
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->increment:I

    sget v2, Lcom/zte/extres/R$string;->date_picker_increment_month_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/DatePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 789
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->decrement:I

    sget v2, Lcom/zte/extres/R$string;->date_picker_decrement_month_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/DatePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 792
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->increment:I

    sget v2, Lcom/zte/extres/R$string;->date_picker_increment_year_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/DatePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 794
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->decrement:I

    sget v2, Lcom/zte/extres/R$string;->date_picker_decrement_year_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/DatePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 796
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 506
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    :cond_0
    return-void

    .line 510
    :cond_1
    iput-object p1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentLocale:Ljava/util/Locale;

    .line 512
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/zte/mifavor/widget/DatePickerZTE;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mTempDate:Ljava/util/Calendar;

    .line 513
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/zte/mifavor/widget/DatePickerZTE;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMinDate:Ljava/util/Calendar;

    .line 514
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/zte/mifavor/widget/DatePickerZTE;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMaxDate:Ljava/util/Calendar;

    .line 515
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/zte/mifavor/widget/DatePickerZTE;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    .line 517
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mNumberOfMonths:I

    .line 518
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mShortMonths:[Ljava/lang/String;

    .line 520
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    iget v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mNumberOfMonths:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mShortMonths:[Ljava/lang/String;

    .line 524
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mNumberOfMonths:I

    if-ge v0, v1, :cond_0

    .line 525
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mShortMonths:[Ljava/lang/String;

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 524
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setDate(III)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 667
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 668
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private setImeOptions(Lcom/zte/mifavor/widget/NumberPickerZTE;II)V
    .locals 3
    .param p1, "spinner"    # Lcom/zte/mifavor/widget/NumberPickerZTE;
    .param p2, "spinnerCount"    # I
    .param p3, "spinnerIndex"    # I

    .prologue
    .line 771
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_0

    .line 772
    const/4 v0, 0x5

    .line 776
    .local v0, "imeOptions":I
    :goto_0
    sget v2, Lcom/zte/extres/R$id;->numberpicker_input:I

    invoke-virtual {p1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 777
    .local v1, "input":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 778
    return-void

    .line 774
    .end local v0    # "imeOptions":I
    .end local v1    # "input":Landroid/widget/TextView;
    :cond_0
    const/4 v0, 0x6

    .restart local v0    # "imeOptions":I
    goto :goto_0
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "contDescResId"    # I

    .prologue
    .line 799
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 800
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 801
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 803
    :cond_0
    return-void
.end method

.method private updateCalendarView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 728
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/widget/CalendarView;->setDate(JZZ)V

    .line 729
    return-void
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 811
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 812
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 813
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 814
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 815
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 816
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 817
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 818
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 819
    :cond_2
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 820
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 821
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private updateSpinners()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 677
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 678
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 679
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 680
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setWrapSelectorWheel(Z)V

    .line 681
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 682
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 683
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 684
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setWrapSelectorWheel(Z)V

    .line 705
    :goto_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mShortMonths:[Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMinValue()I

    move-result v2

    iget-object v3, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMaxValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 707
    .local v0, "displayedValues":[Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 710
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 711
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 712
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setWrapSelectorWheel(Z)V

    .line 715
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValue(I)V

    .line 716
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValue(I)V

    .line 717
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValue(I)V

    .line 719
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 720
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 722
    :cond_0
    return-void

    .line 685
    .end local v0    # "displayedValues":[Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 686
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 687
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 688
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setWrapSelectorWheel(Z)V

    .line 689
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 690
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 691
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 692
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setWrapSelectorWheel(Z)V

    goto/16 :goto_0

    .line 694
    :cond_2
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 695
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 696
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setWrapSelectorWheel(Z)V

    .line 697
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 698
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 699
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 700
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setWrapSelectorWheel(Z)V

    goto/16 :goto_0
.end method

.method private usingNumericMonths()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 535
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mShortMonths:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 421
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/DatePickerZTE;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 422
    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 608
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/DatePickerZTE;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 609
    return-void
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 749
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getMaxDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getMinDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 742
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 735
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILcom/zte/mifavor/widget/DatePickerZTE$OnDateChangedListener;)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lcom/zte/mifavor/widget/DatePickerZTE$OnDateChangedListener;

    .prologue
    .line 638
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/DatePickerZTE;->setDate(III)V

    .line 639
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->updateSpinners()V

    .line 640
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->updateCalendarView()V

    .line 641
    iput-object p4, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mOnDateChangedListener:Lcom/zte/mifavor/widget/DatePickerZTE$OnDateChangedListener;

    .line 642
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 449
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 450
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/DatePickerZTE;->setCurrentLocale(Ljava/util/Locale;)V

    .line 451
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 437
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 438
    const-class v0, Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 439
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 443
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 444
    const-class v0, Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 445
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 427
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 429
    const/16 v0, 0x14

    .line 430
    .local v0, "flags":I
    iget-object v2, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/16 v3, 0x14

    invoke-static {v2, v4, v5, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 619
    move-object v0, p1

    check-cast v0, Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;

    .line 620
    .local v0, "ss":Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 621
    # getter for: Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;->mYear:I
    invoke-static {v0}, Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;->access$1100(Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;)I

    move-result v1

    # getter for: Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;->mMonth:I
    invoke-static {v0}, Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;->access$1200(Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;)I

    move-result v2

    # getter for: Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;->mDay:I
    invoke-static {v0}, Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;->access$1300(Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/zte/mifavor/widget/DatePickerZTE;->setDate(III)V

    .line 622
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->updateSpinners()V

    .line 623
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->updateCalendarView()V

    .line 624
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 613
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 614
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/zte/mifavor/widget/DatePickerZTE$1;)V

    return-object v0
.end method

.method public setCalendarViewShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 479
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CalendarView;->setVisibility(I)V

    .line 480
    return-void

    .line 479
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 322
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mUPdownWhellPaintColor:I

    invoke-virtual {v0, v1, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 323
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mUPdownWhellPaintColor:I

    invoke-virtual {v0, v1, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 324
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mUPdownWhellPaintColor:I

    invoke-virtual {v0, v1, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 327
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 412
    :goto_0
    return-void

    .line 406
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 407
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 408
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 409
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 410
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setEnabled(Z)V

    .line 411
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mIsEnabled:Z

    goto :goto_0
.end method

.method public setMaxDate(J)V
    .locals 5
    .param p1, "maxDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 387
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 388
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 399
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 393
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMaxDate(J)V

    .line 394
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 396
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->updateCalendarView()V

    .line 398
    :cond_1
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->updateSpinners()V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 5
    .param p1, "minDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 351
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 352
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 363
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 357
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMinDate(J)V

    .line 358
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 360
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->updateCalendarView()V

    .line 362
    :cond_1
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->updateSpinners()V

    goto :goto_0
.end method

.method public setSpinnersShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 497
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 498
    return-void

    .line 497
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 596
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/DatePickerZTE;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    :goto_0
    return-void

    .line 599
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/DatePickerZTE;->setDate(III)V

    .line 600
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->updateSpinners()V

    .line 601
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->updateCalendarView()V

    .line 602
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->notifyDateChanged()V

    goto :goto_0
.end method
