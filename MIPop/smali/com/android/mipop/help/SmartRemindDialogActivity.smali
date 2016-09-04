.class public Lcom/android/mipop/help/SmartRemindDialogActivity;
.super Landroid/app/Activity;
.source "SmartRemindDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final FULL_SCREEN_OPERATION_REMIND:I = 0x4

.field public static final LONG_PRESS_OPERATION_REMIND:I = 0x2

.field public static final SCREEN_SHOT_OPERATION_REMIND:I = 0x3

.field public static final SHORTCUT_OPERATION_REMIND:I = 0x1

.field public static final SMART_REMIND_DIALOG_TYPE:Ljava/lang/String; = "smart_remind_dialog_type"

.field private static final TAG:Ljava/lang/String; = "MIPop/SmartRemindDialogActivity"


# instance fields
.field private final DEBUG:Z

.field private mCloseBtn:Landroid/widget/Button;

.field private mDialogType:I

.field private mRemindImage:Landroid/widget/ImageView;

.field private mRemindText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->DEBUG:Z

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->mDialogType:I

    .line 48
    return-void
.end method

.method private getDialogType()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->mDialogType:I

    return v0
.end method

.method private initDialogView()V
    .locals 1

    .prologue
    .line 77
    const-string v0, "DialogModeActivity.initDialogView"

    invoke-direct {p0, v0}, Lcom/android/mipop/help/SmartRemindDialogActivity;->log(Ljava/lang/String;)V

    .line 79
    const v0, 0x7f030079

    invoke-virtual {p0, v0}, Lcom/android/mipop/help/SmartRemindDialogActivity;->setContentView(I)V

    .line 80
    const v0, 0x7f060142

    invoke-virtual {p0, v0}, Lcom/android/mipop/help/SmartRemindDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->mCloseBtn:Landroid/widget/Button;

    .line 81
    iget-object v0, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->mCloseBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method

.method private initDislogSize()V
    .locals 1

    .prologue
    .line 130
    const v0, 0x7f030079

    invoke-virtual {p0, v0}, Lcom/android/mipop/help/SmartRemindDialogActivity;->setContentView(I)V

    .line 131
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 159
    const-string v0, "MIPop/SmartRemindDialogActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method

.method private setDialogType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->mDialogType:I

    .line 135
    return-void
.end method

.method private setDialogView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 85
    const-string v4, "DialogModeActivity.setDialogView"

    invoke-direct {p0, v4}, Lcom/android/mipop/help/SmartRemindDialogActivity;->log(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/mipop/help/SmartRemindDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 87
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "smart_remind_dialog_type"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 89
    .local v0, "dialogType":I
    const v4, 0x7f060140

    invoke-virtual {p0, v4}, Lcom/android/mipop/help/SmartRemindDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->mRemindImage:Landroid/widget/ImageView;

    .line 90
    const v4, 0x7f060141

    invoke-virtual {p0, v4}, Lcom/android/mipop/help/SmartRemindDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->mRemindText:Landroid/widget/TextView;

    .line 92
    invoke-virtual {p0}, Lcom/android/mipop/help/SmartRemindDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 93
    .local v3, "mWindow":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 95
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    packed-switch v0, :pswitch_data_0

    .line 125
    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 127
    return-void

    .line 97
    :pswitch_0
    iget-object v4, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->mRemindImage:Landroid/widget/ImageView;

    const v5, 0x7f02077c

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    iget-object v4, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->mRemindImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    iget-object v4, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->mRemindText:Landroid/widget/TextView;

    const v5, 0x7f09057f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 102
    :pswitch_1
    iget-object v4, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->mRemindImage:Landroid/widget/ImageView;

    const v5, 0x7f02077a

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    iget-object v4, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->mRemindImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    iget-object v4, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->mRemindText:Landroid/widget/TextView;

    const v5, 0x7f090580

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 107
    :pswitch_2
    iget-object v4, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->mRemindImage:Landroid/widget/ImageView;

    const v5, 0x7f02077b

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    iget-object v4, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->mRemindImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    iget-object v4, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->mRemindText:Landroid/widget/TextView;

    const v5, 0x7f090581

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 110
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/android/mipop/help/SmartRemindDialogActivity;->setDialogType(I)V

    goto :goto_0

    .line 113
    :pswitch_3
    iget-object v4, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->mRemindImage:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v4, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->mRemindText:Landroid/widget/TextView;

    const v5, 0x7f090582

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    const-string v0, "DialogModeActivity.onClick"

    invoke-direct {p0, v0}, Lcom/android/mipop/help/SmartRemindDialogActivity;->log(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->mCloseBtn:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/android/mipop/help/SmartRemindDialogActivity;->finish()V

    .line 155
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const-string v0, "SmartRemindDialogActivity.onCreate"

    invoke-direct {p0, v0}, Lcom/android/mipop/help/SmartRemindDialogActivity;->log(Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Lcom/android/mipop/help/SmartRemindDialogActivity;->initDialogView()V

    .line 58
    invoke-direct {p0}, Lcom/android/mipop/help/SmartRemindDialogActivity;->setDialogView()V

    .line 59
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "DialogModeActivity.onDestroy"

    invoke-direct {p0, v0}, Lcom/android/mipop/help/SmartRemindDialogActivity;->log(Ljava/lang/String;)V

    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 65
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    const-string v0, "DialogModeActivity.onNewIntent"

    invoke-direct {p0, v0}, Lcom/android/mipop/help/SmartRemindDialogActivity;->log(Ljava/lang/String;)V

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 72
    invoke-direct {p0}, Lcom/android/mipop/help/SmartRemindDialogActivity;->initDialogView()V

    .line 73
    invoke-direct {p0}, Lcom/android/mipop/help/SmartRemindDialogActivity;->setDialogView()V

    .line 74
    return-void
.end method
