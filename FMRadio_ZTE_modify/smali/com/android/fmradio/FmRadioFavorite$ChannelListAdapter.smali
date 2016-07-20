.class Lcom/android/fmradio/FmRadioFavorite$ChannelListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "FmRadioFavorite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fmradio/FmRadioFavorite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChannelListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fmradio/FmRadioFavorite;


# direct methods
.method public constructor <init>(Lcom/android/fmradio/FmRadioFavorite;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layout"    # I
    .param p4, "c"    # Landroid/database/Cursor;
    .param p5, "from"    # [Ljava/lang/String;
    .param p6, "to"    # [I

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/fmradio/FmRadioFavorite$ChannelListAdapter;->this$0:Lcom/android/fmradio/FmRadioFavorite;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 395
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 396
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 438
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fmradio/FmRadioFavorite$ViewHolder;

    .line 439
    .local v4, "viewHolder":Lcom/android/fmradio/FmRadioFavorite$ViewHolder;
    iget-object v5, p0, Lcom/android/fmradio/FmRadioFavorite$ChannelListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/fmradio/FmStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v0

    .line 442
    .local v0, "currentStationFreq":I
    const-string v5, "is_favorite"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 441
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 445
    .local v1, "isFavorite":I
    const-string v5, "frequency"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 444
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 448
    .local v2, "stationFreq":I
    const-string v5, "station_name"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 447
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 449
    .local v3, "stationName":Ljava/lang/String;
    if-ne v2, v0, :cond_0

    .line 450
    iget-object v5, v4, Lcom/android/fmradio/FmRadioFavorite$ViewHolder;->mPlayIndicator:Lcom/android/fmradio/views/FmVisualizerView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/fmradio/views/FmVisualizerView;->setVisibility(I)V

    .line 451
    iget-object v5, v4, Lcom/android/fmradio/FmRadioFavorite$ViewHolder;->mPlayIndicator:Lcom/android/fmradio/views/FmVisualizerView;

    invoke-virtual {v5}, Lcom/android/fmradio/views/FmVisualizerView;->startAnimation()V

    .line 456
    :goto_0
    if-lez v1, :cond_1

    .line 457
    iget-object v5, v4, Lcom/android/fmradio/FmRadioFavorite$ViewHolder;->mStationTypeView:Landroid/widget/ImageView;

    .line 458
    const v6, 0x7f02020b

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 463
    :goto_1
    iget-object v5, v4, Lcom/android/fmradio/FmRadioFavorite$ViewHolder;->mStationTypeView:Landroid/widget/ImageView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 464
    iget-object v5, v4, Lcom/android/fmradio/FmRadioFavorite$ViewHolder;->mStationFreqView:Landroid/widget/TextView;

    .line 465
    invoke-static {v2}, Lcom/android/fmradio/FmUtils;->formatStation(I)Ljava/lang/String;

    move-result-object v6

    .line 464
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v5, v4, Lcom/android/fmradio/FmRadioFavorite$ViewHolder;->mStationNameView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    return-void

    .line 453
    :cond_0
    iget-object v5, v4, Lcom/android/fmradio/FmRadioFavorite$ViewHolder;->mPlayIndicator:Lcom/android/fmradio/views/FmVisualizerView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/fmradio/views/FmVisualizerView;->setVisibility(I)V

    .line 454
    iget-object v5, v4, Lcom/android/fmradio/FmRadioFavorite$ViewHolder;->mPlayIndicator:Lcom/android/fmradio/views/FmVisualizerView;

    invoke-virtual {v5}, Lcom/android/fmradio/views/FmVisualizerView;->stopAnimation()V

    goto :goto_0

    .line 460
    :cond_1
    iget-object v5, v4, Lcom/android/fmradio/FmRadioFavorite$ViewHolder;->mStationTypeView:Landroid/widget/ImageView;

    .line 461
    const v6, 0x7f02020a

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 410
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 411
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/android/fmradio/FmRadioFavorite$ViewHolder;

    invoke-direct {v1}, Lcom/android/fmradio/FmRadioFavorite$ViewHolder;-><init>()V

    .line 413
    .local v1, "viewHolder":Lcom/android/fmradio/FmRadioFavorite$ViewHolder;
    const v2, 0x7f0600d3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/fmradio/views/FmVisualizerView;

    .line 412
    iput-object v2, v1, Lcom/android/fmradio/FmRadioFavorite$ViewHolder;->mPlayIndicator:Lcom/android/fmradio/views/FmVisualizerView;

    .line 415
    const v2, 0x7f0600d7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 414
    iput-object v2, v1, Lcom/android/fmradio/FmRadioFavorite$ViewHolder;->mStationTypeView:Landroid/widget/ImageView;

    .line 417
    const v2, 0x7f0600d4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 416
    iput-object v2, v1, Lcom/android/fmradio/FmRadioFavorite$ViewHolder;->mStationFreqView:Landroid/widget/TextView;

    .line 419
    const v2, 0x7f0600d6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 418
    iput-object v2, v1, Lcom/android/fmradio/FmRadioFavorite$ViewHolder;->mStationNameView:Landroid/widget/TextView;

    .line 420
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 421
    iget-object v2, v1, Lcom/android/fmradio/FmRadioFavorite$ViewHolder;->mStationTypeView:Landroid/widget/ImageView;

    .line 422
    iget-object v3, p0, Lcom/android/fmradio/FmRadioFavorite$ChannelListAdapter;->this$0:Lcom/android/fmradio/FmRadioFavorite;

    # getter for: Lcom/android/fmradio/FmRadioFavorite;->mStationTypeBtnOnClick:Landroid/view/View$OnClickListener;
    invoke-static {v3}, Lcom/android/fmradio/FmRadioFavorite;->access$2(Lcom/android/fmradio/FmRadioFavorite;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    return-object v0
.end method
