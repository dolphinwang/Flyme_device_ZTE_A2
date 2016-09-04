.class Lcom/android/mipop/ChangeKeyActivity$SettingListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ChangeKeyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/ChangeKeyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mipop/ChangeKeyActivity$ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mSetKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mipop/ChangeKeyActivity;


# direct methods
.method public constructor <init>(Lcom/android/mipop/ChangeKeyActivity;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "setKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mipop/ChangeKeyActivity$ListItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 489
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/android/mipop/ChangeKeyActivity$ListItem;>;"
    iput-object p1, p0, Lcom/android/mipop/ChangeKeyActivity$SettingListAdapter;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    .line 490
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 491
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$SettingListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 492
    iput-object p4, p0, Lcom/android/mipop/ChangeKeyActivity$SettingListAdapter;->mSetKey:Ljava/lang/String;

    .line 493
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 497
    invoke-virtual {p0, p1}, Lcom/android/mipop/ChangeKeyActivity$SettingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mipop/ChangeKeyActivity$ListItem;

    .line 498
    .local v2, "item":Lcom/android/mipop/ChangeKeyActivity$ListItem;
    iget-object v11, p0, Lcom/android/mipop/ChangeKeyActivity$SettingListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f030077

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 499
    .local v8, "rootView":Landroid/view/View;
    const v11, 0x7f060137

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 500
    .local v9, "textView":Landroid/widget/TextView;
    const v11, 0x7f060136

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 501
    .local v3, "iv":Landroid/widget/ImageView;
    const v11, 0x7f060138

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/zte/mifavor/widget/RadioButtonZTE;

    .line 503
    .local v6, "radioButton":Lcom/zte/mifavor/widget/RadioButtonZTE;
    iget-object v11, v2, Lcom/android/mipop/ChangeKeyActivity$ListItem;->title:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    const/high16 v11, -0x1a000000

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 505
    iget v11, v2, Lcom/android/mipop/ChangeKeyActivity$ListItem;->iv:I

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 506
    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/16 v12, 0xe6

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 507
    invoke-virtual {v6, p1}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setId(I)V

    .line 509
    iget-object v12, p0, Lcom/android/mipop/ChangeKeyActivity$SettingListAdapter;->mSetKey:Ljava/lang/String;

    const/4 v11, -0x1

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v11, :pswitch_data_0

    .line 534
    :goto_1
    return-object v8

    .line 509
    :sswitch_0
    const-string v13, "UP_KEY"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x0

    goto :goto_0

    :sswitch_1
    const-string v13, "LEFT_KEY"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :sswitch_2
    const-string v13, "MID_KEY"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x2

    goto :goto_0

    :sswitch_3
    const-string v13, "RIGHT_KEY"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x3

    goto :goto_0

    :sswitch_4
    const-string v13, "DOWN_KEY"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x4

    goto :goto_0

    .line 511
    :pswitch_0
    iget-object v11, p0, Lcom/android/mipop/ChangeKeyActivity$SettingListAdapter;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    invoke-virtual {v11}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "UP_KEY"

    const/4 v13, 0x3

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 512
    .local v10, "upKey":I
    if-ne v10, p1, :cond_1

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v6, v11}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setChecked(Z)V

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    goto :goto_2

    .line 515
    .end local v10    # "upKey":I
    :pswitch_1
    iget-object v11, p0, Lcom/android/mipop/ChangeKeyActivity$SettingListAdapter;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    invoke-virtual {v11}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "LEFT_KEY"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 516
    .local v4, "leftKey":I
    if-ne v4, p1, :cond_2

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {v6, v11}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setChecked(Z)V

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    goto :goto_3

    .line 519
    .end local v4    # "leftKey":I
    :pswitch_2
    iget-object v11, p0, Lcom/android/mipop/ChangeKeyActivity$SettingListAdapter;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    invoke-virtual {v11}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "MID_KEY"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 520
    .local v5, "midKey":I
    if-ne v5, p1, :cond_3

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {v6, v11}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setChecked(Z)V

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    goto :goto_4

    .line 523
    .end local v5    # "midKey":I
    :pswitch_3
    iget-object v11, p0, Lcom/android/mipop/ChangeKeyActivity$SettingListAdapter;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    invoke-virtual {v11}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "RIGHT_KEY"

    const/4 v13, 0x2

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 524
    .local v7, "rightKey":I
    if-ne v7, p1, :cond_4

    const/4 v11, 0x1

    :goto_5
    invoke-virtual {v6, v11}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setChecked(Z)V

    goto/16 :goto_1

    :cond_4
    const/4 v11, 0x0

    goto :goto_5

    .line 527
    .end local v7    # "rightKey":I
    :pswitch_4
    iget-object v11, p0, Lcom/android/mipop/ChangeKeyActivity$SettingListAdapter;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    invoke-virtual {v11}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "DOWN_KEY"

    const/4 v13, 0x4

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 528
    .local v1, "downKey":I
    if-ne v1, p1, :cond_5

    const/4 v11, 0x1

    :goto_6
    invoke-virtual {v6, v11}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setChecked(Z)V

    goto/16 :goto_1

    :cond_5
    const/4 v11, 0x0

    goto :goto_6

    .line 509
    :sswitch_data_0
    .sparse-switch
        -0x7c36b2de -> :sswitch_4
        -0x6ad971f9 -> :sswitch_1
        -0x6a606965 -> :sswitch_0
        0x48a4bd7c -> :sswitch_3
        0x69bc27a8 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
