.class public Lcom/zte/mifavor/widget/DateTimePickerZTE;
.super Landroid/widget/FrameLayout;
.source "DateTimePickerZTE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;,
        Lcom/zte/mifavor/widget/DateTimePickerZTE$OnTimeChangedListener;,
        Lcom/zte/mifavor/widget/DateTimePickerZTE$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = true

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final NO_OP_CHANGE_LISTENER:Lcom/zte/mifavor/widget/DateTimePickerZTE$OnTimeChangedListener;


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private final mAmPmSpinnerInput:Landroid/widget/EditText;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private final mCalendarView:Landroid/widget/CalendarView;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private final mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private final mDividerSpace:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private final mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private final mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private final mHourSpinnerInput:Landroid/widget/EditText;

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private final mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private final mMinuteSpinnerInput:Landroid/widget/EditText;

.field private final mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mOnDateChangedListener:Lcom/zte/mifavor/widget/DateTimePickerZTE$OnDateChangedListener;

.field private mOnTimeChangedListener:Lcom/zte/mifavor/widget/DateTimePickerZTE$OnTimeChangedListener;

.field private mSelectorWhellPaintColor:I

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempCalendar:Ljava/util/Calendar;

.field private mTempDate:Ljava/util/Calendar;

.field private mUPdownWhellPaintColor:I

.field private final mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->LOG_TAG:Ljava/lang/String;

    .line 137
    new-instance v0, Lcom/zte/mifavor/widget/DateTimePickerZTE$1;

    invoke-direct {v0}, Lcom/zte/mifavor/widget/DateTimePickerZTE$1;-><init>()V

    sput-object v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->NO_OP_CHANGE_LISTENER:Lcom/zte/mifavor/widget/DateTimePickerZTE$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 207
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 210
    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 211
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 226
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    new-instance v19, Ljava/text/SimpleDateFormat;

    const-string v20, "MM/dd/yyyy"

    invoke-direct/range {v19 .. v20}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDateFormat:Ljava/text/DateFormat;

    .line 133
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mIsEnabled:Z

    .line 170
    const v19, -0xe5b03d

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mSelectorWhellPaintColor:I

    .line 171
    const/high16 v19, -0x76000000

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mUPdownWhellPaintColor:I

    .line 229
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setCurrentLocale(Ljava/util/Locale;)V

    .line 231
    sget-object v19, Landroid/R$styleable;->DatePicker:[I

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move/from16 v3, p3

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 233
    .local v7, "attributesArray":Landroid/content/res/TypedArray;
    const/16 v19, 0x6

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    .line 235
    .local v17, "spinnersShown":Z
    const/16 v19, 0x7

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 237
    .local v8, "calendarViewShown":Z
    const/16 v19, 0x1

    const/16 v20, 0x76c

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    .line 239
    .local v18, "startYear":I
    const/16 v19, 0x2

    const/16 v20, 0x834

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 240
    .local v10, "endYear":I
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 241
    .local v14, "minDate":Ljava/lang/String;
    const/16 v19, 0x5

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 244
    .local v13, "maxDate":Ljava/lang/String;
    sget v12, Lcom/zte/extres/R$layout;->datetime_picker_holozte:I

    .line 245
    .local v12, "layoutResourceId":I
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 247
    const-string v19, "layout_inflater"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 249
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v11, v12, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 251
    new-instance v15, Lcom/zte/mifavor/widget/DateTimePickerZTE$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/zte/mifavor/widget/DateTimePickerZTE$2;-><init>(Lcom/zte/mifavor/widget/DateTimePickerZTE;)V

    .line 287
    .local v15, "onChangeListener":Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;
    sget v19, Lcom/zte/extres/R$id;->pickers:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mSpinners:Landroid/widget/LinearLayout;

    .line 291
    sget v19, Lcom/zte/extres/R$id;->calendar_view:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CalendarView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

    move-object/from16 v19, v0

    new-instance v20, Lcom/zte/mifavor/widget/DateTimePickerZTE$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE$3;-><init>(Lcom/zte/mifavor/widget/DateTimePickerZTE;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CalendarView;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    .line 301
    sget v19, Lcom/zte/extres/R$id;->day:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x64

    invoke-virtual/range {v19 .. v21}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnLongPressUpdateInterval(J)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnValueChangedListener(Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    sget v20, Lcom/zte/extres/R$id;->numberpicker_input:I

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    const/16 v20, 0x19

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    const/16 v20, 0x12

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setSelectorSize(I)V

    .line 309
    sget v19, Lcom/zte/extres/R$id;->month:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mNumberOfMonths:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mShortMonths:[Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    const-wide/16 v20, 0xc8

    invoke-virtual/range {v19 .. v21}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnLongPressUpdateInterval(J)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnValueChangedListener(Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    sget v20, Lcom/zte/extres/R$id;->numberpicker_input:I

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    const/16 v20, 0x19

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    const/16 v20, 0x12

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setSelectorSize(I)V

    .line 321
    sget v19, Lcom/zte/extres/R$id;->year:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x64

    invoke-virtual/range {v19 .. v21}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnLongPressUpdateInterval(J)V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnValueChangedListener(Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    sget v20, Lcom/zte/extres/R$id;->numberpicker_input:I

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    const/16 v20, 0x19

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    const/16 v20, 0x12

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setSelectorSize(I)V

    .line 331
    if-nez v17, :cond_4

    if-nez v8, :cond_4

    .line 332
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setSpinnersShown(Z)V

    .line 339
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Calendar;->clear()V

    .line 340
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v14, v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 347
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setMinDate(J)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Calendar;->clear()V

    .line 351
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v13, v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v19, v0

    const/16 v20, 0xb

    const/16 v21, 0x1f

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v10, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 358
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setMaxDate(J)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v19, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/util/Calendar;->get(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Ljava/util/Calendar;->get(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v21, v0

    const/16 v22, 0x5

    invoke-virtual/range {v21 .. v22}, Ljava/util/Calendar;->get(I)I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->init(IIILcom/zte/mifavor/widget/DateTimePickerZTE$OnDateChangedListener;)V

    .line 367
    sget v19, Lcom/zte/extres/R$id;->space:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDividerSpace:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDividerSpace:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    const/16 v20, 0x19

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDividerSpace:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDividerSpace:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 371
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v19, 0x0

    const-string v20, " "

    aput-object v20, v16, v19

    .line 372
    .local v16, "space":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDividerSpace:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDividerSpace:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 377
    sget v19, Lcom/zte/extres/R$id;->hour:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    new-instance v20, Lcom/zte/mifavor/widget/DateTimePickerZTE$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE$4;-><init>(Lcom/zte/mifavor/widget/DateTimePickerZTE;)V

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnValueChangedListener(Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    sget v20, Lcom/zte/extres/R$id;->numberpicker_input:I

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mHourSpinnerInput:Landroid/widget/EditText;

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mHourSpinnerInput:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    const/16 v20, 0x19

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    const/16 v20, 0x12

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setSelectorSize(I)V

    .line 401
    sget v19, Lcom/zte/extres/R$id;->divider:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    const/16 v20, 0x19

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 405
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v9, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string v20, ":"

    aput-object v20, v9, v19

    .line 406
    .local v9, "divider":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 411
    sget v19, Lcom/zte/extres/R$id;->minute:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    const/16 v20, 0x3b

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    const/16 v20, 0x19

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    const/16 v20, 0x12

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setSelectorSize(I)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x64

    invoke-virtual/range {v19 .. v21}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnLongPressUpdateInterval(J)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    invoke-static {}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getTwoDigitFormatter()Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setFormatter(Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    new-instance v20, Lcom/zte/mifavor/widget/DateTimePickerZTE$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE$5;-><init>(Lcom/zte/mifavor/widget/DateTimePickerZTE;)V

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnValueChangedListener(Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    sget v20, Lcom/zte/extres/R$id;->numberpicker_input:I

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinuteSpinnerInput:Landroid/widget/EditText;

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinuteSpinnerInput:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 445
    new-instance v19, Ljava/text/DateFormatSymbols;

    invoke-direct/range {v19 .. v19}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual/range {v19 .. v19}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmStrings:[Ljava/lang/String;

    .line 448
    sget v19, Lcom/zte/extres/R$id;->amPm:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 449
    .local v6, "amPmView":Landroid/view/View;
    instance-of v0, v6, Landroid/widget/Button;

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 450
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 451
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 452
    check-cast v6, Landroid/widget/Button;

    .end local v6    # "amPmView":Landroid/view/View;
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    move-object/from16 v19, v0

    new-instance v20, Lcom/zte/mifavor/widget/DateTimePickerZTE$6;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE$6;-><init>(Lcom/zte/mifavor/widget/DateTimePickerZTE;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->updateHourControl()V

    .line 484
    invoke-direct/range {p0 .. p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->updateAmPmControl()V

    .line 486
    sget-object v19, Lcom/zte/mifavor/widget/DateTimePickerZTE;->NO_OP_CHANGE_LISTENER:Lcom/zte/mifavor/widget/DateTimePickerZTE$OnTimeChangedListener;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setOnTimeChangedListener(Lcom/zte/mifavor/widget/DateTimePickerZTE$OnTimeChangedListener;)V

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempCalendar:Ljava/util/Calendar;

    move-object/from16 v19, v0

    const/16 v20, 0xb

    invoke-virtual/range {v19 .. v20}, Ljava/util/Calendar;->get(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setCurrentHour(Ljava/lang/Integer;)V

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempCalendar:Ljava/util/Calendar;

    move-object/from16 v19, v0

    const/16 v20, 0xc

    invoke-virtual/range {v19 .. v20}, Ljava/util/Calendar;->get(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 492
    invoke-direct/range {p0 .. p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->reorderSpinners()V

    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->isEnabled()Z

    move-result v19

    if-nez v19, :cond_2

    .line 496
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setEnabled(Z)V

    .line 500
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setContentDescriptions()V

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getImportantForAccessibility()I

    move-result v19

    if-nez v19, :cond_3

    .line 505
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setImportantForAccessibility(I)V

    .line 507
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mSelectorWhellPaintColor:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setColor(I)V

    .line 508
    return-void

    .line 334
    .end local v9    # "divider":[Ljava/lang/String;
    .end local v16    # "space":[Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setSpinnersShown(Z)V

    .line 335
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setCalendarViewShown(Z)V

    goto/16 :goto_0

    .line 345
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    goto/16 :goto_1

    .line 356
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v19, v0

    const/16 v20, 0xb

    const/16 v21, 0x1f

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v10, v1, v2}, Ljava/util/Calendar;->set(III)V

    goto/16 :goto_2

    .line 462
    .restart local v6    # "amPmView":Landroid/view/View;
    .restart local v9    # "divider":[Ljava/lang/String;
    .restart local v16    # "space":[Ljava/lang/String;
    :cond_7
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    .line 463
    check-cast v6, Lcom/zte/mifavor/widget/NumberPickerZTE;

    .end local v6    # "amPmView":Landroid/view/View;
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    const/16 v20, 0xd

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    const/16 v20, 0xd

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setSelectorSize(I)V

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmStrings:[Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    new-instance v20, Lcom/zte/mifavor/widget/DateTimePickerZTE$7;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE$7;-><init>(Lcom/zte/mifavor/widget/DateTimePickerZTE;)V

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnValueChangedListener(Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object/from16 v19, v0

    sget v20, Lcom/zte/extres/R$id;->numberpicker_input:I

    invoke-virtual/range {v19 .. v20}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmSpinnerInput:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_3
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/DateTimePickerZTE;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/DateTimePickerZTE;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/DateTimePickerZTE;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/DateTimePickerZTE;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mIsAm:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/zte/mifavor/widget/DateTimePickerZTE;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/DateTimePickerZTE;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mIsAm:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/zte/mifavor/widget/DateTimePickerZTE;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/DateTimePickerZTE;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$1200(Lcom/zte/mifavor/widget/DateTimePickerZTE;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/DateTimePickerZTE;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$1300(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/DateTimePickerZTE;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/DateTimePickerZTE;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/DateTimePickerZTE;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/DateTimePickerZTE;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/DateTimePickerZTE;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/mifavor/widget/DateTimePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/DateTimePickerZTE;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/mifavor/widget/DateTimePickerZTE;III)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/DateTimePickerZTE;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setDate(III)V

    return-void
.end method

.method static synthetic access$700(Lcom/zte/mifavor/widget/DateTimePickerZTE;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/DateTimePickerZTE;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->updateSpinners()V

    return-void
.end method

.method static synthetic access$800(Lcom/zte/mifavor/widget/DateTimePickerZTE;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/DateTimePickerZTE;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->updateCalendarView()V

    return-void
.end method

.method static synthetic access$900(Lcom/zte/mifavor/widget/DateTimePickerZTE;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/DateTimePickerZTE;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->notifyDateChanged()V

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 782
    if-nez p1, :cond_0

    .line 783
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 788
    :goto_0
    return-object v2

    .line 785
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 786
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 787
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

    .line 902
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p3, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

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
    .line 1084
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->sendAccessibilityEvent(I)V

    .line 1085
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mOnDateChangedListener:Lcom/zte/mifavor/widget/DateTimePickerZTE$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mOnDateChangedListener:Lcom/zte/mifavor/widget/DateTimePickerZTE$OnDateChangedListener;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/zte/mifavor/widget/DateTimePickerZTE$OnDateChangedListener;->onDateChanged(Lcom/zte/mifavor/widget/DateTimePickerZTE;III)V

    .line 1088
    :cond_0
    return-void
.end method

.method private onTimeChanged()V
    .locals 3

    .prologue
    .line 690
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->sendAccessibilityEvent(I)V

    .line 691
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mOnTimeChangedListener:Lcom/zte/mifavor/widget/DateTimePickerZTE$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mOnTimeChangedListener:Lcom/zte/mifavor/widget/DateTimePickerZTE$OnTimeChangedListener;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/zte/mifavor/widget/DateTimePickerZTE$OnTimeChangedListener;->onTimeChanged(Lcom/zte/mifavor/widget/DateTimePickerZTE;II)V

    .line 694
    :cond_0
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 4
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "outDate"    # Ljava/util/Calendar;

    .prologue
    .line 893
    :try_start_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    const/4 v1, 0x1

    .line 897
    :goto_0
    return v1

    .line 895
    :catch_0
    move-exception v0

    .line 896
    .local v0, "e":Ljava/text/ParseException;
    sget-object v1, Lcom/zte/mifavor/widget/DateTimePickerZTE;->LOG_TAG:Ljava/lang/String;

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

    .line 897
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private reorderSpinners()V
    .locals 5

    .prologue
    .line 798
    iget-object v3, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 799
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v1

    .line 800
    .local v1, "order":[C
    array-length v2, v1

    .line 801
    .local v2, "spinnerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 802
    aget-char v3, v1, v0

    sparse-switch v3, :sswitch_data_0

    .line 816
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 804
    :sswitch_0
    iget-object v3, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 805
    iget-object v3, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-direct {p0, v3, v2, v0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setImeOptions(Lcom/zte/mifavor/widget/NumberPickerZTE;II)V

    .line 801
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 808
    :sswitch_1
    iget-object v3, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 809
    iget-object v3, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-direct {p0, v3, v2, v0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setImeOptions(Lcom/zte/mifavor/widget/NumberPickerZTE;II)V

    goto :goto_1

    .line 812
    :sswitch_2
    iget-object v3, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 813
    iget-object v3, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-direct {p0, v3, v2, v0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setImeOptions(Lcom/zte/mifavor/widget/NumberPickerZTE;II)V

    goto :goto_1

    .line 819
    :cond_0
    iget-object v3, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDividerSpace:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 820
    iget-object v3, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 821
    iget-object v3, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 822
    iget-object v3, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 823
    iget-object v3, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 825
    return-void

    .line 802
    nop

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
    .line 1110
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->increment:I

    sget v2, Lcom/zte/extres/R$string;->date_picker_increment_day_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 1112
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->decrement:I

    sget v2, Lcom/zte/extres/R$string;->date_picker_decrement_day_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 1115
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->increment:I

    sget v2, Lcom/zte/extres/R$string;->date_picker_increment_month_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 1117
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->decrement:I

    sget v2, Lcom/zte/extres/R$string;->date_picker_decrement_month_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 1120
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->increment:I

    sget v2, Lcom/zte/extres/R$string;->date_picker_increment_year_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 1122
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->decrement:I

    sget v2, Lcom/zte/extres/R$string;->date_picker_decrement_year_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 1124
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->increment:I

    sget v2, Lcom/zte/extres/R$string;->time_picker_increment_minute_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 1126
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->decrement:I

    sget v2, Lcom/zte/extres/R$string;->time_picker_decrement_minute_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 1129
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->increment:I

    sget v2, Lcom/zte/extres/R$string;->time_picker_increment_hour_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 1131
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->decrement:I

    sget v2, Lcom/zte/extres/R$string;->time_picker_decrement_hour_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 1134
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->increment:I

    sget v2, Lcom/zte/extres/R$string;->time_picker_increment_set_pm_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 1137
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->decrement:I

    sget v2, Lcom/zte/extres/R$string;->time_picker_decrement_set_am_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 1140
    :cond_0
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 754
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 773
    :goto_0
    return-void

    .line 758
    :cond_0
    iput-object p1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentLocale:Ljava/util/Locale;

    .line 760
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    .line 761
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinDate:Ljava/util/Calendar;

    .line 762
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMaxDate:Ljava/util/Calendar;

    .line 763
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    .line 765
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mNumberOfMonths:I

    .line 766
    iget v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mNumberOfMonths:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mShortMonths:[Ljava/lang/String;

    .line 767
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mNumberOfMonths:I

    if-ge v0, v1, :cond_1

    .line 770
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 767
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 772
    :cond_1
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempCalendar:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private setDate(III)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 908
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 909
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 910
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 911
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMaxDate:Ljava/util/Calendar;

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
    .line 1099
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_0

    .line 1100
    const/4 v0, 0x5

    .line 1104
    .local v0, "imeOptions":I
    :goto_0
    sget v2, Lcom/zte/extres/R$id;->numberpicker_input:I

    invoke-virtual {p1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1105
    .local v1, "input":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 1106
    return-void

    .line 1102
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
    .line 1143
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1144
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1145
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1147
    :cond_0
    return-void
.end method

.method private updateAmPmControl()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 670
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->is24HourView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 671
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    if-eqz v1, :cond_0

    .line 672
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setVisibility(I)V

    .line 686
    :goto_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->sendAccessibilityEvent(I)V

    .line 687
    return-void

    .line 674
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 677
    :cond_1
    iget-boolean v2, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mIsAm:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 678
    .local v0, "index":I
    :goto_1
    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    if-eqz v2, :cond_3

    .line 679
    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValue(I)V

    .line 680
    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setVisibility(I)V

    goto :goto_0

    .line 677
    .end local v0    # "index":I
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 682
    .restart local v0    # "index":I
    :cond_3
    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmStrings:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 683
    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateCalendarView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 967
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/widget/CalendarView;->setDate(JZZ)V

    .line 968
    return-void
.end method

.method private updateHourControl()V
    .locals 2

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 660
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 661
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getTwoDigitFormatter()Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setFormatter(Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;)V

    .line 667
    :goto_0
    return-void

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 664
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 665
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setFormatter(Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;)V

    goto :goto_0
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1155
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1156
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1157
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1158
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 1159
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1180
    :cond_0
    :goto_0
    return-void

    .line 1160
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1161
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 1162
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 1163
    :cond_2
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1164
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 1165
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 1166
    :cond_3
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1167
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 1168
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 1169
    :cond_4
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1170
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 1171
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 1172
    :cond_5
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1173
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 1174
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private updateSpinners()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 918
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 919
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 920
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 921
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setWrapSelectorWheel(Z)V

    .line 922
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 923
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 924
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 925
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setWrapSelectorWheel(Z)V

    .line 946
    :goto_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mShortMonths:[Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMinValue()I

    move-result v2

    iget-object v3, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMaxValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 948
    .local v0, "displayedValues":[Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 951
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 952
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 953
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setWrapSelectorWheel(Z)V

    .line 957
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValue(I)V

    .line 959
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValue(I)V

    .line 960
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValue(I)V

    .line 961
    return-void

    .line 926
    .end local v0    # "displayedValues":[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 927
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 928
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 929
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setWrapSelectorWheel(Z)V

    .line 930
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 931
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 932
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 933
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setWrapSelectorWheel(Z)V

    goto/16 :goto_0

    .line 935
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 936
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 937
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setWrapSelectorWheel(Z)V

    .line 938
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 939
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 940
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 941
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setWrapSelectorWheel(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 615
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
    .line 847
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 848
    return-void
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

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

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 977
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v0

    .line 978
    .local v0, "currentHour":I
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 979
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 983
    :goto_0
    return-object v1

    .line 980
    :cond_0
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 981
    rem-int/lit8 v1, v0, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 983
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
    .line 1043
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getMaxDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getMinDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILcom/zte/mifavor/widget/DateTimePickerZTE$OnDateChangedListener;)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lcom/zte/mifavor/widget/DateTimePickerZTE$OnDateChangedListener;

    .prologue
    .line 879
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setDate(III)V

    .line 880
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->updateSpinners()V

    .line 881
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->updateCalendarView()V

    .line 882
    iput-object p4, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mOnDateChangedListener:Lcom/zte/mifavor/widget/DateTimePickerZTE$OnDateChangedListener;

    .line 883
    return-void
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 1036
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 609
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 697
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 698
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setCurrentLocale(Ljava/util/Locale;)V

    .line 699
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 648
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 649
    const-class v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 650
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 654
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 655
    const-class v0, Lcom/zte/mifavor/widget/DateTimePickerZTE;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 656
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 620
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 622
    const/16 v0, 0x15

    .line 623
    .local v0, "flags":I
    iget-boolean v2, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mIs24HourView:Z

    if-eqz v2, :cond_0

    .line 624
    or-int/lit16 v0, v0, 0x80

    .line 628
    :goto_0
    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 629
    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 630
    iget-object v2, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 634
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    return-void

    .line 626
    .end local v1    # "selectedDateUtterance":Ljava/lang/String;
    :cond_0
    or-int/lit8 v0, v0, 0x40

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 858
    move-object v0, p1

    check-cast v0, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;

    .line 859
    .local v0, "ss":Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 860
    # getter for: Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;->mYear:I
    invoke-static {v0}, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;->access$1600(Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;)I

    move-result v1

    # getter for: Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;->mMonth:I
    invoke-static {v0}, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;->access$1700(Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;)I

    move-result v2

    # getter for: Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;->mDay:I
    invoke-static {v0}, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;->access$1800(Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setDate(III)V

    .line 861
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->updateSpinners()V

    .line 862
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->updateCalendarView()V

    .line 863
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setCurrentHour(Ljava/lang/Integer;)V

    .line 864
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;->getMinute()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 865
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .prologue
    .line 852
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 853
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getDayOfMonth()I

    move-result v4

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/zte/mifavor/widget/DateTimePickerZTE$SavedState;-><init>(Landroid/os/Parcelable;IIIIILcom/zte/mifavor/widget/DateTimePickerZTE$1;)V

    return-object v0
.end method

.method public setCalendarViewShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 727
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CalendarView;->setVisibility(I)V

    .line 728
    return-void

    .line 727
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mUPdownWhellPaintColor:I

    invoke-virtual {v0, v1, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 216
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mUPdownWhellPaintColor:I

    invoke-virtual {v0, v1, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 217
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mUPdownWhellPaintColor:I

    invoke-virtual {v0, v1, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 218
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mUPdownWhellPaintColor:I

    invoke-virtual {v0, v1, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 219
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mUPdownWhellPaintColor:I

    invoke-virtual {v0, v1, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 220
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mUPdownWhellPaintColor:I

    invoke-virtual {v0, v1, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 221
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mUPdownWhellPaintColor:I

    invoke-virtual {v0, v1, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 224
    return-void
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    const/16 v1, 0xc

    .line 992
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1012
    :cond_0
    :goto_0
    return-void

    .line 995
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 997
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 998
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mIsAm:Z

    .line 999
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 1000
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1008
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->updateAmPmControl()V

    .line 1010
    :cond_3
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValue(I)V

    .line 1011
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->onTimeChanged()V

    goto :goto_0

    .line 1003
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mIsAm:Z

    .line 1004
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 1005
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentMinute"    # Ljava/lang/Integer;

    .prologue
    .line 1050
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1055
    :goto_0
    return-void

    .line 1053
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValue(I)V

    .line 1054
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->onTimeChanged()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 605
    :goto_0
    return-void

    .line 587
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 588
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 589
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 590
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 591
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setEnabled(Z)V

    .line 592
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 597
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 598
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    if-eqz v0, :cond_1

    .line 599
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 603
    :goto_1
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mIsEnabled:Z

    goto :goto_0

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .prologue
    .line 1020
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1030
    :goto_0
    return-void

    .line 1023
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mIs24HourView:Z

    .line 1025
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1026
    .local v0, "currentHour":I
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->updateHourControl()V

    .line 1028
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setCurrentHour(Ljava/lang/Integer;)V

    .line 1029
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->updateAmPmControl()V

    goto :goto_0
.end method

.method public setMaxDate(J)V
    .locals 5
    .param p1, "maxDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 568
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 569
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 580
    :goto_0
    return-void

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 574
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMaxDate(J)V

    .line 575
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 577
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->updateCalendarView()V

    .line 579
    :cond_1
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->updateSpinners()V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 5
    .param p1, "minDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 532
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 533
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 544
    :goto_0
    return-void

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 538
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMinDate(J)V

    .line 539
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 541
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->updateCalendarView()V

    .line 543
    :cond_1
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->updateSpinners()V

    goto :goto_0
.end method

.method public setOnTimeChangedListener(Lcom/zte/mifavor/widget/DateTimePickerZTE$OnTimeChangedListener;)V
    .locals 0
    .param p1, "onTimeChangedListener"    # Lcom/zte/mifavor/widget/DateTimePickerZTE$OnTimeChangedListener;

    .prologue
    .line 970
    iput-object p1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mOnTimeChangedListener:Lcom/zte/mifavor/widget/DateTimePickerZTE$OnTimeChangedListener;

    .line 971
    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 745
    iget-object v1, p0, Lcom/zte/mifavor/widget/DateTimePickerZTE;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 746
    return-void

    .line 745
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
    .line 835
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 842
    :goto_0
    return-void

    .line 838
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->setDate(III)V

    .line 839
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->updateSpinners()V

    .line 840
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->updateCalendarView()V

    .line 841
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DateTimePickerZTE;->notifyDateChanged()V

    goto :goto_0
.end method
