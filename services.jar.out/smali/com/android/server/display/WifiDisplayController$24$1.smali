.class Lcom/android/server/display/WifiDisplayController$24$1;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pLinkInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/WifiDisplayController$24;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController$24;)V
    .locals 0

    .prologue
    .line 2728
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$24$1;->this$1:Lcom/android/server/display/WifiDisplayController$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLinkInfoAvailable(Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;)V
    .locals 5
    .param p1, "status"    # Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;

    .prologue
    .line 2735
    if-eqz p1, :cond_1

    iget-object v2, p1, Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;->linkInfo:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 2737
    # getter for: Lcom/android/server/display/WifiDisplayController;->wfdLinkInfoPattern:Ljava/util/regex/Pattern;
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$7500()Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;->linkInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2738
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2739
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$24$1;->this$1:Lcom/android/server/display/WifiDisplayController$24;

    iget-object v2, v2, Lcom/android/server/display/WifiDisplayController$24;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$24$1;->this$1:Lcom/android/server/display/WifiDisplayController$24;

    iget-object v3, v3, Lcom/android/server/display/WifiDisplayController$24;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/display/WifiDisplayController;->parseDec(Ljava/lang/String;)I
    invoke-static {v3, v4}, Lcom/android/server/display/WifiDisplayController;->access$7700(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)I

    move-result v3

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWifiScore:I
    invoke-static {v2, v3}, Lcom/android/server/display/WifiDisplayController;->access$7602(Lcom/android/server/display/WifiDisplayController;I)I

    .line 2740
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$24$1;->this$1:Lcom/android/server/display/WifiDisplayController$24;

    iget-object v2, v2, Lcom/android/server/display/WifiDisplayController$24;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$24$1;->this$1:Lcom/android/server/display/WifiDisplayController$24;

    iget-object v3, v3, Lcom/android/server/display/WifiDisplayController$24;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/display/WifiDisplayController;->parseFloat(Ljava/lang/String;)I
    invoke-static {v3, v4}, Lcom/android/server/display/WifiDisplayController;->access$7900(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)I

    move-result v3

    # setter for: Lcom/android/server/display/WifiDisplayController;->mRSSI:I
    invoke-static {v2, v3}, Lcom/android/server/display/WifiDisplayController;->access$7802(Lcom/android/server/display/WifiDisplayController;I)I

    .line 2741
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$24$1;->this$1:Lcom/android/server/display/WifiDisplayController$24;

    iget-object v2, v2, Lcom/android/server/display/WifiDisplayController$24;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$24$1;->this$1:Lcom/android/server/display/WifiDisplayController$24;

    iget-object v3, v3, Lcom/android/server/display/WifiDisplayController$24;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/display/WifiDisplayController;->parseFloat(Ljava/lang/String;)I
    invoke-static {v3, v4}, Lcom/android/server/display/WifiDisplayController;->access$7900(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)I

    move-result v3

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWifiRate:I
    invoke-static {v2, v3}, Lcom/android/server/display/WifiDisplayController;->access$8002(Lcom/android/server/display/WifiDisplayController;I)I

    .line 2743
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$24$1;->this$1:Lcom/android/server/display/WifiDisplayController$24;

    iget-object v2, v2, Lcom/android/server/display/WifiDisplayController$24;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->checkInterference(Ljava/util/regex/Matcher;)Z
    invoke-static {v2, v1}, Lcom/android/server/display/WifiDisplayController;->access$8100(Lcom/android/server/display/WifiDisplayController;Ljava/util/regex/Matcher;)Z

    move-result v0

    .line 2745
    .local v0, "interference":Z
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$24$1;->this$1:Lcom/android/server/display/WifiDisplayController$24;

    iget-object v2, v2, Lcom/android/server/display/WifiDisplayController$24;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->updateSignalLevel(Z)V
    invoke-static {v2, v0}, Lcom/android/server/display/WifiDisplayController;->access$8200(Lcom/android/server/display/WifiDisplayController;Z)V

    .line 2755
    .end local v0    # "interference":Z
    .end local v1    # "match":Ljava/util/regex/Matcher;
    :goto_0
    return-void

    .line 2748
    .restart local v1    # "match":Ljava/util/regex/Matcher;
    :cond_0
    const-string v2, "WifiDisplayController"

    const-string v3, "wfdLinkInfoPattern Malformed Pattern, not match String "

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2752
    .end local v1    # "match":Ljava/util/regex/Matcher;
    :cond_1
    const-string v2, "WifiDisplayController"

    const-string v3, "onLinkInfoAvailable() parameter is null!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
