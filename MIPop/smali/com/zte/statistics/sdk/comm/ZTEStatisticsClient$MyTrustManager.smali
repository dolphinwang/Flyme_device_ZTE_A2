.class Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient$MyTrustManager;
.super Ljava/lang/Object;
.source "ZTEStatisticsClient.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTrustManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;


# direct methods
.method private constructor <init>(Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient$MyTrustManager;->this$0:Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient$MyTrustManager;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient$MyTrustManager;-><init>(Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;)V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 89
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 92
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method
