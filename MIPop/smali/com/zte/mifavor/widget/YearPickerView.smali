.class Lcom/zte/mifavor/widget/YearPickerView;
.super Landroid/widget/ListView;
.source "YearPickerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/zte/mifavor/widget/OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/YearPickerView$YearAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/zte/mifavor/widget/YearPickerView$YearAdapter;

.field private mChildSize:I

.field private mController:Lcom/zte/mifavor/widget/DatePickerController;

.field private mSelectedPosition:I

.field private mViewSize:I

.field private mYearSelectedCircleColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/YearPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/YearPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/widget/YearPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    iput v5, p0, Lcom/zte/mifavor/widget/YearPickerView;->mSelectedPosition:I

    .line 64
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v5, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 66
    .local v0, "frame":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/YearPickerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 69
    .local v2, "res":Landroid/content/res/Resources;
    sget v3, Lcom/zte/extres/R$dimen;->datepicker_view_animator_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/zte/mifavor/widget/YearPickerView;->mViewSize:I

    .line 70
    sget v3, Lcom/zte/extres/R$dimen;->datepicker_year_label_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/zte/mifavor/widget/YearPickerView;->mChildSize:I

    .line 72
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/YearPickerView;->setVerticalFadingEdgeEnabled(Z)V

    .line 73
    iget v3, p0, Lcom/zte/mifavor/widget/YearPickerView;->mChildSize:I

    div-int/lit8 v3, v3, 0x3

    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/YearPickerView;->setFadingEdgeLength(I)V

    .line 75
    sget v3, Lcom/zte/extres/R$dimen;->datepicker_year_picker_padding_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 77
    .local v1, "paddingTop":I
    invoke-virtual {p0, v4, v1, v4, v4}, Lcom/zte/mifavor/widget/YearPickerView;->setPadding(IIII)V

    .line 79
    invoke-virtual {p0, p0}, Lcom/zte/mifavor/widget/YearPickerView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 80
    invoke-virtual {p0, v4}, Lcom/zte/mifavor/widget/YearPickerView;->setDividerHeight(I)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/YearPickerView;)Lcom/zte/mifavor/widget/DatePickerController;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/YearPickerView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zte/mifavor/widget/YearPickerView;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/YearPickerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/YearPickerView;

    .prologue
    .line 40
    iget v0, p0, Lcom/zte/mifavor/widget/YearPickerView;->mYearSelectedCircleColor:I

    return v0
.end method

.method private updateAdapterData()V
    .locals 4

    .prologue
    .line 106
    iget-object v2, p0, Lcom/zte/mifavor/widget/YearPickerView;->mAdapter:Lcom/zte/mifavor/widget/YearPickerView$YearAdapter;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/YearPickerView$YearAdapter;->clear()V

    .line 107
    iget-object v2, p0, Lcom/zte/mifavor/widget/YearPickerView;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    invoke-interface {v2}, Lcom/zte/mifavor/widget/DatePickerController;->getMaxYear()I

    move-result v0

    .line 108
    .local v0, "maxYear":I
    iget-object v2, p0, Lcom/zte/mifavor/widget/YearPickerView;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    invoke-interface {v2}, Lcom/zte/mifavor/widget/DatePickerController;->getMinYear()I

    move-result v1

    .local v1, "year":I
    :goto_0
    if-gt v1, v0, :cond_0

    .line 109
    iget-object v2, p0, Lcom/zte/mifavor/widget/YearPickerView;->mAdapter:Lcom/zte/mifavor/widget/YearPickerView$YearAdapter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/widget/YearPickerView$YearAdapter;->add(Ljava/lang/Object;)V

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public getFirstPositionOffset()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/YearPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 171
    .local v0, "firstChild":Landroid/view/View;
    if-nez v0, :cond_0

    .line 174
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0
.end method

.method public getYearSelectedCircleColor()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/zte/mifavor/widget/YearPickerView;->mYearSelectedCircleColor:I

    return v0
.end method

.method public init(Lcom/zte/mifavor/widget/DatePickerController;)V
    .locals 3
    .param p1, "controller"    # Lcom/zte/mifavor/widget/DatePickerController;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/zte/mifavor/widget/YearPickerView;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    .line 85
    iget-object v0, p0, Lcom/zte/mifavor/widget/YearPickerView;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    invoke-interface {v0, p0}, Lcom/zte/mifavor/widget/DatePickerController;->registerOnDateChangedListener(Lcom/zte/mifavor/widget/OnDateChangedListener;)V

    .line 87
    new-instance v0, Lcom/zte/mifavor/widget/YearPickerView$YearAdapter;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/YearPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/zte/extres/R$layout;->year_label_text_view:I

    invoke-direct {v0, p0, v1, v2}, Lcom/zte/mifavor/widget/YearPickerView$YearAdapter;-><init>(Lcom/zte/mifavor/widget/YearPickerView;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/YearPickerView;->mAdapter:Lcom/zte/mifavor/widget/YearPickerView$YearAdapter;

    .line 88
    invoke-direct {p0}, Lcom/zte/mifavor/widget/YearPickerView;->updateAdapterData()V

    .line 89
    iget-object v0, p0, Lcom/zte/mifavor/widget/YearPickerView;->mAdapter:Lcom/zte/mifavor/widget/YearPickerView$YearAdapter;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/YearPickerView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/YearPickerView;->onDateChanged()V

    .line 92
    return-void
.end method

.method public onDateChanged()V
    .locals 2

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/zte/mifavor/widget/YearPickerView;->updateAdapterData()V

    .line 180
    iget-object v0, p0, Lcom/zte/mifavor/widget/YearPickerView;->mAdapter:Lcom/zte/mifavor/widget/YearPickerView$YearAdapter;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/YearPickerView$YearAdapter;->notifyDataSetChanged()V

    .line 181
    iget-object v0, p0, Lcom/zte/mifavor/widget/YearPickerView;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    invoke-interface {v0}, Lcom/zte/mifavor/widget/DatePickerController;->getSelectedDay()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/YearPickerView;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    invoke-interface {v1}, Lcom/zte/mifavor/widget/DatePickerController;->getMinYear()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/YearPickerView;->postSetSelectionCentered(I)V

    .line 183
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v2, 0x0

    .line 187
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 188
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 189
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 190
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 192
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/zte/mifavor/widget/YearPickerView;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    invoke-interface {v0}, Lcom/zte/mifavor/widget/DatePickerController;->tryVibrate()V

    .line 116
    iget v0, p0, Lcom/zte/mifavor/widget/YearPickerView;->mSelectedPosition:I

    if-eq p3, v0, :cond_0

    .line 117
    iput p3, p0, Lcom/zte/mifavor/widget/YearPickerView;->mSelectedPosition:I

    .line 118
    iget-object v0, p0, Lcom/zte/mifavor/widget/YearPickerView;->mAdapter:Lcom/zte/mifavor/widget/YearPickerView$YearAdapter;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/YearPickerView$YearAdapter;->notifyDataSetChanged()V

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/YearPickerView;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    iget-object v0, p0, Lcom/zte/mifavor/widget/YearPickerView;->mAdapter:Lcom/zte/mifavor/widget/YearPickerView$YearAdapter;

    invoke-virtual {v0, p3}, Lcom/zte/mifavor/widget/YearPickerView$YearAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/zte/mifavor/widget/DatePickerController;->onYearSelected(I)V

    .line 121
    return-void
.end method

.method public postSetSelectionCentered(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 155
    iget v0, p0, Lcom/zte/mifavor/widget/YearPickerView;->mViewSize:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/zte/mifavor/widget/YearPickerView;->mChildSize:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/widget/YearPickerView;->postSetSelectionFromTop(II)V

    .line 156
    return-void
.end method

.method public postSetSelectionFromTop(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 159
    new-instance v0, Lcom/zte/mifavor/widget/YearPickerView$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/zte/mifavor/widget/YearPickerView$1;-><init>(Lcom/zte/mifavor/widget/YearPickerView;II)V

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/YearPickerView;->post(Ljava/lang/Runnable;)Z

    .line 167
    return-void
.end method

.method setItemTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/zte/mifavor/widget/YearPickerView;->mAdapter:Lcom/zte/mifavor/widget/YearPickerView$YearAdapter;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/YearPickerView$YearAdapter;->setItemTextAppearance(I)V

    .line 125
    return-void
.end method

.method public setYearSelectedCircleColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 95
    iget v0, p0, Lcom/zte/mifavor/widget/YearPickerView;->mYearSelectedCircleColor:I

    if-eq p1, v0, :cond_0

    .line 96
    iput p1, p0, Lcom/zte/mifavor/widget/YearPickerView;->mYearSelectedCircleColor:I

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/YearPickerView;->requestLayout()V

    .line 99
    return-void
.end method
