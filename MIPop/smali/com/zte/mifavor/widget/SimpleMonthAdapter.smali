.class Lcom/zte/mifavor/widget/SimpleMonthAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimpleMonthAdapter.java"

# interfaces
.implements Lcom/zte/mifavor/widget/SimpleMonthView$OnDayClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleMonthAdapter"


# instance fields
.field private mCalendarTextColors:Landroid/content/res/ColorStateList;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/zte/mifavor/widget/DatePickerController;

.field private mSelectedDay:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zte/mifavor/widget/DatePickerController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/zte/mifavor/widget/DatePickerController;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    .line 44
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->init()V

    .line 45
    iget-object v0, p0, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    invoke-interface {v0}, Lcom/zte/mifavor/widget/DatePickerController;->getSelectedDay()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 46
    return-void
.end method

.method private isSelectedDayInMonth(II)Z
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    const/4 v0, 0x1

    .line 155
    iget-object v1, p0, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->mSelectedDay:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    .line 73
    iget-object v2, p0, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    invoke-interface {v2}, Lcom/zte/mifavor/widget/DatePickerController;->getMaxYear()I

    move-result v2

    iget-object v3, p0, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    invoke-interface {v3}, Lcom/zte/mifavor/widget/DatePickerController;->getMinYear()I

    move-result v3

    sub-int v1, v2, v3

    .line 74
    .local v1, "diffYear":I
    iget-object v2, p0, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    invoke-interface {v2}, Lcom/zte/mifavor/widget/DatePickerController;->getMaxMonth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    invoke-interface {v3}, Lcom/zte/mifavor/widget/DatePickerController;->getMinMonth()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0xc

    add-int v0, v2, v3

    .line 76
    .local v0, "diffMonth":I
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 86
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, -0x1

    .line 98
    const/4 v8, 0x0

    .line 99
    .local v8, "drawingParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p2, :cond_2

    move-object v0, p2

    .line 100
    check-cast v0, Lcom/zte/mifavor/widget/SimpleMonthView;

    .line 102
    .local v0, "v":Lcom/zte/mifavor/widget/SimpleMonthView;
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/SimpleMonthView;->getTag()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "drawingParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    check-cast v8, Ljava/util/HashMap;

    .line 115
    .restart local v8    # "drawingParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    if-nez v8, :cond_3

    .line 116
    new-instance v8, Ljava/util/HashMap;

    .end local v8    # "drawingParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 120
    .restart local v8    # "drawingParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_1
    iget-object v4, p0, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    invoke-interface {v4}, Lcom/zte/mifavor/widget/DatePickerController;->getMinMonth()I

    move-result v4

    add-int v7, p1, v4

    .line 121
    .local v7, "currentMonth":I
    rem-int/lit8 v2, v7, 0xc

    .line 122
    .local v2, "month":I
    div-int/lit8 v4, v7, 0xc

    iget-object v10, p0, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    invoke-interface {v10}, Lcom/zte/mifavor/widget/DatePickerController;->getMinYear()I

    move-result v10

    add-int v3, v4, v10

    .line 124
    .local v3, "year":I
    const/4 v1, -0x1

    .line 125
    .local v1, "selectedDay":I
    invoke-direct {p0, v3, v2}, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->isSelectedDayInMonth(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 126
    iget-object v4, p0, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->mSelectedDay:Ljava/util/Calendar;

    const/4 v10, 0x5

    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 131
    :cond_1
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/SimpleMonthView;->reuse()V

    .line 134
    iget-object v4, p0, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    invoke-interface {v4}, Lcom/zte/mifavor/widget/DatePickerController;->getMinMonth()I

    move-result v4

    if-ne v4, v2, :cond_4

    iget-object v4, p0, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    invoke-interface {v4}, Lcom/zte/mifavor/widget/DatePickerController;->getMinYear()I

    move-result v4

    if-ne v4, v3, :cond_4

    .line 135
    iget-object v4, p0, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    invoke-interface {v4}, Lcom/zte/mifavor/widget/DatePickerController;->getMinDay()I

    move-result v5

    .line 141
    .local v5, "enabledDayRangeStart":I
    :goto_2
    iget-object v4, p0, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    invoke-interface {v4}, Lcom/zte/mifavor/widget/DatePickerController;->getMaxMonth()I

    move-result v4

    if-ne v4, v2, :cond_5

    iget-object v4, p0, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    invoke-interface {v4}, Lcom/zte/mifavor/widget/DatePickerController;->getMaxYear()I

    move-result v4

    if-ne v4, v3, :cond_5

    .line 142
    iget-object v4, p0, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    invoke-interface {v4}, Lcom/zte/mifavor/widget/DatePickerController;->getMaxDay()I

    move-result v6

    .line 147
    .local v6, "enabledDayRangeEnd":I
    :goto_3
    iget-object v4, p0, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    invoke-interface {v4}, Lcom/zte/mifavor/widget/DatePickerController;->getFirstDayOfWeek()I

    move-result v4

    invoke-virtual/range {v0 .. v6}, Lcom/zte/mifavor/widget/SimpleMonthView;->setMonthParams(IIIIII)V

    .line 149
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/SimpleMonthView;->invalidate()V

    .line 151
    return-object v0

    .line 104
    .end local v0    # "v":Lcom/zte/mifavor/widget/SimpleMonthView;
    .end local v1    # "selectedDay":I
    .end local v2    # "month":I
    .end local v3    # "year":I
    .end local v5    # "enabledDayRangeStart":I
    .end local v6    # "enabledDayRangeEnd":I
    .end local v7    # "currentMonth":I
    :cond_2
    new-instance v0, Lcom/zte/mifavor/widget/SimpleMonthView;

    iget-object v4, p0, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/zte/mifavor/widget/SimpleMonthView;-><init>(Landroid/content/Context;)V

    .line 106
    .restart local v0    # "v":Lcom/zte/mifavor/widget/SimpleMonthView;
    new-instance v9, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v9, v10, v10}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 108
    .local v9, "params":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v0, v9}, Lcom/zte/mifavor/widget/SimpleMonthView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/zte/mifavor/widget/SimpleMonthView;->setClickable(Z)V

    .line 110
    invoke-virtual {v0, p0}, Lcom/zte/mifavor/widget/SimpleMonthView;->setOnDayClickListener(Lcom/zte/mifavor/widget/SimpleMonthView$OnDayClickListener;)V

    .line 111
    iget-object v4, p0, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->mCalendarTextColors:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    .line 112
    iget-object v4, p0, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->mCalendarTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4}, Lcom/zte/mifavor/widget/SimpleMonthView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    .line 118
    .end local v9    # "params":Landroid/widget/AbsListView$LayoutParams;
    :cond_3
    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_1

    .line 137
    .restart local v1    # "selectedDay":I
    .restart local v2    # "month":I
    .restart local v3    # "year":I
    .restart local v7    # "currentMonth":I
    :cond_4
    const/4 v5, 0x1

    .restart local v5    # "enabledDayRangeStart":I
    goto :goto_2

    .line 144
    :cond_5
    const/16 v6, 0x1f

    .restart local v6    # "enabledDayRangeEnd":I
    goto :goto_3
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->mSelectedDay:Ljava/util/Calendar;

    .line 69
    return-void
.end method

.method public onDayClick(Lcom/zte/mifavor/widget/SimpleMonthView;Ljava/util/Calendar;)V
    .locals 0
    .param p1, "view"    # Lcom/zte/mifavor/widget/SimpleMonthView;
    .param p2, "day"    # Ljava/util/Calendar;

    .prologue
    .line 160
    if-eqz p2, :cond_0

    .line 161
    invoke-virtual {p0, p2}, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->onDayTapped(Ljava/util/Calendar;)V

    .line 163
    :cond_0
    return-void
.end method

.method protected onDayTapped(Ljava/util/Calendar;)V
    .locals 4
    .param p1, "day"    # Ljava/util/Calendar;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    invoke-interface {v0}, Lcom/zte/mifavor/widget/DatePickerController;->tryVibrate()V

    .line 172
    iget-object v0, p0, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->mController:Lcom/zte/mifavor/widget/DatePickerController;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/zte/mifavor/widget/DatePickerController;->onDayOfMonthSelected(III)V

    .line 174
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 175
    return-void
.end method

.method setCalendarTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->mCalendarTextColors:Landroid/content/res/ColorStateList;

    .line 62
    return-void
.end method

.method public setSelectedDay(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "day"    # Ljava/util/Calendar;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->mSelectedDay:Ljava/util/Calendar;

    if-eq v0, p1, :cond_0

    .line 55
    iput-object p1, p0, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->mSelectedDay:Ljava/util/Calendar;

    .line 56
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SimpleMonthAdapter;->notifyDataSetChanged()V

    .line 58
    :cond_0
    return-void
.end method
