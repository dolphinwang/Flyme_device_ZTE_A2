.class public Lcom/mediatek/simservs/client/CommunicationDiversion;
.super Lcom/mediatek/simservs/client/SimservType;
.source "CommunicationDiversion.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/RuleType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;
    }
.end annotation


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "communication-diversion"

.field private static final NO_REPLY_TIMER_DEFAULT_VAULE:I = -0x2


# instance fields
.field mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

.field mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 0
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/client/SimservType;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 48
    return-void
.end method


# virtual methods
.method public createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;
    .locals 5

    .prologue
    .line 299
    new-instance v0, Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "communication-diversion"

    iget-object v3, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 300
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->setContext(Landroid/content/Context;)V

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 307
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    return-object v0
.end method

.method public getNoReplyTimer()I
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    invoke-virtual {v0}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->getValue()I

    move-result v0

    return v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "communication-diversion"

    return-object v0
.end method

.method public getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    return-object v0
.end method

.method public initServiceInstance(Lorg/w3c/dom/Document;)V
    .locals 20
    .param p1, "domDoc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 62
    const-string v1, "NoReplyTimer"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 63
    .local v17, "noReplyTimerNode":Lorg/w3c/dom/NodeList;
    const/4 v7, -0x2

    .line 64
    .local v7, "noReplyTimer":I
    const/16 v19, 0x0

    .line 65
    .local v19, "val":Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_6

    .line 66
    const-string v1, "CommunicationDiversion"

    const-string v2, "Got NoReplyTimer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/Element;

    .line 69
    .local v16, "noReplyTimerElement":Lorg/w3c/dom/Element;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v19

    .line 71
    :try_start_0
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 76
    :goto_0
    new-instance v1, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v4, "communication-diversion"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mCredentials:Lorg/apache/http/auth/Credentials;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;-><init>(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    .line 78
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_0

    .line 79
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setNetwork(Landroid/net/Network;)V

    .line 82
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 83
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setContext(Landroid/content/Context;)V

    .line 86
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 87
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setEtag(Ljava/lang/String;)V

    .line 160
    .end local v16    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    :cond_2
    :goto_1
    const-string v1, "ruleset"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 161
    .local v18, "ruleSetNode":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_f

    .line 162
    const-string v1, "CommunicationDiversion"

    const-string v2, "Got ruleset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 164
    .local v6, "nruleSetElement":Lorg/w3c/dom/Element;
    new-instance v1, Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v3, "communication-diversion"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_3

    .line 166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 169
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_4

    .line 170
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setContext(Landroid/content/Context;)V

    .line 173
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    .line 228
    .end local v6    # "nruleSetElement":Lorg/w3c/dom/Element;
    :cond_5
    :goto_2
    return-void

    .line 72
    .end local v18    # "ruleSetNode":Lorg/w3c/dom/NodeList;
    .restart local v16    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v15

    .line 73
    .local v15, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v15}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_0

    .line 90
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    .end local v16    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    :cond_6
    const-string v1, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v2, "NoReplyTimer"

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 92
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_9

    .line 93
    const-string v1, "CommunicationDiversion"

    const-string v2, "Got NoReplyTimer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/Element;

    .line 96
    .restart local v16    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v19

    .line 98
    :try_start_1
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 103
    :goto_3
    new-instance v1, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v4, "communication-diversion"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mCredentials:Lorg/apache/http/auth/Credentials;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;-><init>(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    .line 105
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_7

    .line 106
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setNetwork(Landroid/net/Network;)V

    .line 109
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_8

    .line 110
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setContext(Landroid/content/Context;)V

    .line 113
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 114
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setEtag(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 99
    :catch_1
    move-exception v15

    .line 100
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v15}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_3

    .line 117
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    .end local v16    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    :cond_9
    const-string v1, "ss:NoReplyTimer"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 118
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_c

    .line 119
    const-string v1, "CommunicationDiversion"

    const-string v2, "Got NoReplyTimer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/Element;

    .line 122
    .restart local v16    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v19

    .line 124
    :try_start_2
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    .line 129
    :goto_4
    new-instance v1, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v4, "communication-diversion"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mCredentials:Lorg/apache/http/auth/Credentials;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;-><init>(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    .line 131
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_a

    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setNetwork(Landroid/net/Network;)V

    .line 135
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_b

    .line 136
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setContext(Landroid/content/Context;)V

    .line 139
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 140
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setEtag(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 125
    :catch_2
    move-exception v15

    .line 126
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v15}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_4

    .line 143
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    .end local v16    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    :cond_c
    new-instance v8, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v11, "communication-diversion"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mCredentials:Lorg/apache/http/auth/Credentials;

    const/4 v14, -0x1

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v14}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;-><init>(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;I)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    .line 145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_d

    .line 146
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setNetwork(Landroid/net/Network;)V

    .line 149
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_e

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setContext(Landroid/content/Context;)V

    .line 153
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 154
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setEtag(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 177
    .restart local v18    # "ruleSetNode":Lorg/w3c/dom/NodeList;
    :cond_f
    const-string v1, "urn:ietf:params:xml:ns:common-policy"

    const-string v2, "ruleset"

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 178
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_12

    .line 179
    const-string v1, "CommunicationDiversion"

    const-string v2, "Got ruleset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 181
    .restart local v6    # "nruleSetElement":Lorg/w3c/dom/Element;
    new-instance v1, Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v3, "communication-diversion"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 183
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_10

    .line 184
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 187
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_11

    .line 188
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setContext(Landroid/content/Context;)V

    .line 191
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 192
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 195
    .end local v6    # "nruleSetElement":Lorg/w3c/dom/Element;
    :cond_12
    const-string v1, "cp:ruleset"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 196
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_15

    .line 197
    const-string v1, "CommunicationDiversion"

    const-string v2, "Got ruleset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 199
    .restart local v6    # "nruleSetElement":Lorg/w3c/dom/Element;
    new-instance v1, Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v3, "communication-diversion"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 201
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_13

    .line 202
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 205
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_14

    .line 206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setContext(Landroid/content/Context;)V

    .line 209
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 210
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 213
    .end local v6    # "nruleSetElement":Lorg/w3c/dom/Element;
    :cond_15
    new-instance v1, Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v3, "communication-diversion"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 214
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_16

    .line 215
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 218
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_17

    .line 219
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setContext(Landroid/content/Context;)V

    .line 222
    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 223
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public saveRule(Ljava/lang/String;)V
    .locals 6
    .param p1, "ruleId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 320
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 321
    iget-object v4, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 322
    .local v3, "rules":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/simservs/client/policy/Rule;

    .line 323
    .local v1, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v4, v1, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 324
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Rule;->toXmlString()Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "ruleXml":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/Rule;->setContent(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Rule;->getEtag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 327
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Rule;->getEtag()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    .line 335
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v2    # "ruleXml":Ljava/lang/String;
    .end local v3    # "rules":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_1
    :goto_0
    return-void

    .line 333
    :cond_2
    const-string v4, "saveRule"

    const-string v5, "ruleId is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveRuleSet()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 285
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "ruleXml":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v1, v0}, Lcom/mediatek/simservs/client/policy/RuleSet;->setContent(Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->getEtag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->getEtag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    .line 290
    :cond_0
    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 236
    invoke-super {p0, p1}, Lcom/mediatek/simservs/client/SimservType;->setNetwork(Landroid/net/Network;)V

    .line 237
    if-eqz p1, :cond_1

    .line 238
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    if-eqz v0, :cond_0

    .line 239
    const-string v0, "SimservType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XCAP dedicated network netid to mNoReplyTimer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setNetwork(Landroid/net/Network;)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    if-eqz v0, :cond_1

    .line 243
    const-string v0, "SimservType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XCAP dedicated network netid to mRuleSet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 247
    :cond_1
    return-void
.end method

.method public setNoReplyTimer(I)V
    .locals 2
    .param p1, "timerValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    invoke-virtual {v1, p1}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setValue(I)V

    .line 261
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->toXmlString()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "noReplyTimerXml":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    invoke-virtual {v1, v0}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setContent(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->getEtag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->getEtag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    .line 266
    :cond_0
    return-void
.end method
