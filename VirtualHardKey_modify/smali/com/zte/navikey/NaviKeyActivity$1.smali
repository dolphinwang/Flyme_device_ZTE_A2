.class Lcom/zte/navikey/NaviKeyActivity$1;
.super Ljava/lang/Object;
.source "NaviKeyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/navikey/NaviKeyActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/navikey/NaviKeyActivity;


# direct methods
.method constructor <init>(Lcom/zte/navikey/NaviKeyActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/navikey/NaviKeyActivity$1;->this$0:Lcom/zte/navikey/NaviKeyActivity;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    const-string v0, "NaviKey"

    const-string v1, "onClick 1:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/zte/navikey/NaviKeyActivity$1;->this$0:Lcom/zte/navikey/NaviKeyActivity;

    iget-object v0, v0, Lcom/zte/navikey/NaviKeyActivity;->iv1:Landroid/widget/ImageView;

    const v1, 0x7f0201ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    iget-object v0, p0, Lcom/zte/navikey/NaviKeyActivity$1;->this$0:Lcom/zte/navikey/NaviKeyActivity;

    iget-object v0, v0, Lcom/zte/navikey/NaviKeyActivity;->iv2:Landroid/widget/ImageView;

    const v1, 0x7f0201eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    iget-object v0, p0, Lcom/zte/navikey/NaviKeyActivity$1;->this$0:Lcom/zte/navikey/NaviKeyActivity;

    iget-object v0, v0, Lcom/zte/navikey/NaviKeyActivity;->radioButton1:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 93
    iget-object v0, p0, Lcom/zte/navikey/NaviKeyActivity$1;->this$0:Lcom/zte/navikey/NaviKeyActivity;

    iget-object v0, v0, Lcom/zte/navikey/NaviKeyActivity;->radioButton2:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 94
    const-string v0, "persist.sys.exchange"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method
