.class public Lcom/mediatek/simservs/client/policy/RuleSet;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "RuleSet.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/ConfigureType;


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "cp:ruleset"

.field public static final NODE_NAME_WITH_NAMESPACE:Ljava/lang/String; = "cp:ruleset?xmlns(cp=urn:ietf:params:xml:ns:common-policy)"


# instance fields
.field public mRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/simservs/client/policy/Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 1
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V
    .locals 0
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;
    .param p5, "domElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 63
    invoke-virtual {p0, p5}, Lcom/mediatek/simservs/client/policy/RuleSet;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 64
    return-void
.end method

.method private unfoldRules(Lcom/mediatek/simservs/client/policy/Rule;Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 11
    .param p1, "aRule"    # Lcom/mediatek/simservs/client/policy/Rule;
    .param p2, "element"    # Lorg/w3c/dom/Element;
    .param p3, "media"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 226
    new-instance v0, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "cp:ruleset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/Credentials;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    .line 228
    .local v0, "ruleBusy":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v6, :cond_0

    .line 229
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 231
    :cond_0
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_1

    .line 232
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setContext(Landroid/content/Context;)V

    .line 234
    :cond_1
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 235
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setEtag(Ljava/lang/String;)V

    .line 237
    :cond_2
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->clearConditions()V

    .line 238
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 239
    if-eqz p3, :cond_3

    .line 240
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 243
    :cond_3
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    .end local v0    # "ruleBusy":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_4
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 246
    new-instance v1, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v2, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "cp:ruleset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/Credentials;

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    .line 248
    .local v1, "ruleNotReachable":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v6, :cond_5

    .line 249
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 251
    :cond_5
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_6

    .line 252
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setContext(Landroid/content/Context;)V

    .line 254
    :cond_6
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 255
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setEtag(Ljava/lang/String;)V

    .line 257
    :cond_7
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->clearConditions()V

    .line 258
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    .line 259
    if-eqz p3, :cond_8

    .line 260
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 263
    :cond_8
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    .end local v1    # "ruleNotReachable":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_9
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 266
    new-instance v2, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "cp:ruleset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/Credentials;

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    .line 268
    .local v2, "ruleInternational":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v6, :cond_a

    .line 269
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v2, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 271
    :cond_a
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_b

    .line 272
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setContext(Landroid/content/Context;)V

    .line 274
    :cond_b
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    if-eqz v6, :cond_c

    .line 275
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setEtag(Ljava/lang/String;)V

    .line 277
    :cond_c
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->clearConditions()V

    .line 278
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 279
    if-eqz p3, :cond_d

    .line 280
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 283
    :cond_d
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    .end local v2    # "ruleInternational":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_e
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 286
    new-instance v3, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "cp:ruleset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/Credentials;

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    .line 288
    .local v3, "ruleInternationalExHc":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v6, :cond_f

    .line 289
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v3, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 291
    :cond_f
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_10

    .line 292
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setContext(Landroid/content/Context;)V

    .line 294
    :cond_10
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    if-eqz v6, :cond_11

    .line 295
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setEtag(Ljava/lang/String;)V

    .line 297
    :cond_11
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->clearConditions()V

    .line 298
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 299
    if-eqz p3, :cond_12

    .line 300
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 303
    :cond_12
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    .end local v3    # "ruleInternationalExHc":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_13
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 307
    new-instance v4, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "cp:ruleset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/Credentials;

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    .line 309
    .local v4, "ruleNoAnswer":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v6, :cond_14

    .line 310
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v4, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 312
    :cond_14
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_15

    .line 313
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setContext(Landroid/content/Context;)V

    .line 315
    :cond_15
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    if-eqz v6, :cond_16

    .line 316
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setEtag(Ljava/lang/String;)V

    .line 318
    :cond_16
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->clearConditions()V

    .line 319
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    .line 320
    if-eqz p3, :cond_17

    .line 321
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 324
    :cond_17
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    .end local v4    # "ruleNoAnswer":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_18
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 327
    new-instance v5, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "cp:ruleset"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/Credentials;

    move-object v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    .line 329
    .local v5, "ruleRoaming":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v6, :cond_19

    .line 330
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v5, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 332
    :cond_19
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_1a

    .line 333
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setContext(Landroid/content/Context;)V

    .line 335
    :cond_1a
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    if-eqz v6, :cond_1b

    .line 336
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setEtag(Ljava/lang/String;)V

    .line 338
    :cond_1b
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->clearConditions()V

    .line 339
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    .line 340
    if-eqz p3, :cond_1c

    .line 341
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 344
    :cond_1c
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    .end local v5    # "ruleRoaming":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_1d
    return-void
.end method


# virtual methods
.method public clearRules()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    if-nez v0, :cond_0

    .line 382
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 385
    return-void
.end method

.method public createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 359
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    if-nez v1, :cond_0

    .line 360
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    .line 362
    :cond_0
    new-instance v0, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cp:ruleset"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 363
    .local v0, "aRule":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_1

    .line 364
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 366
    :cond_1
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 367
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setContext(Landroid/content/Context;)V

    .line 369
    :cond_2
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 370
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setEtag(Ljava/lang/String;)V

    .line 372
    :cond_3
    invoke-virtual {v0, p1}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "cp:ruleset?xmlns(cp=urn:ietf:params:xml:ns:common-policy)"

    return-object v0
.end method

.method public getRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/simservs/client/policy/Rule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .locals 9
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    .line 74
    move-object v6, p1

    check-cast v6, Lorg/w3c/dom/Element;

    .line 75
    .local v6, "domElement":Lorg/w3c/dom/Element;
    const-string v1, "rule"

    invoke-interface {v6, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 76
    .local v7, "domNodes":Lorg/w3c/dom/NodeList;
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    .line 77
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_3

    .line 78
    const-string v1, "RuleSet"

    const-string v2, "Got rule"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v8, v1, :cond_3

    .line 80
    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 81
    .local v5, "element":Lorg/w3c/dom/Element;
    new-instance v0, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cp:ruleset"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    .line 83
    .local v0, "aRule":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setContext(Landroid/content/Context;)V

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 92
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setEtag(Ljava/lang/String;)V

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "aRule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v5    # "element":Lorg/w3c/dom/Element;
    .end local v8    # "i":I
    :cond_3
    const-string v1, "urn:ietf:params:xml:ns:common-policy"

    const-string v2, "rule"

    invoke-interface {v6, v1, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 100
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_7

    .line 101
    const-string v1, "RuleSet"

    const-string v2, "Got rule"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v8, v1, :cond_b

    .line 103
    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 104
    .restart local v5    # "element":Lorg/w3c/dom/Element;
    new-instance v0, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cp:ruleset"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    .line 106
    .restart local v0    # "aRule":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_4

    .line 107
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 110
    :cond_4
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_5

    .line 111
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setContext(Landroid/content/Context;)V

    .line 114
    :cond_5
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 115
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setEtag(Ljava/lang/String;)V

    .line 118
    :cond_6
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 121
    .end local v0    # "aRule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v5    # "element":Lorg/w3c/dom/Element;
    .end local v8    # "i":I
    :cond_7
    const-string v1, "cp:rule"

    invoke-interface {v6, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 122
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_b

    .line 123
    const-string v1, "RuleSet"

    const-string v2, "Got cp:rule"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v8, v1, :cond_b

    .line 125
    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 126
    .restart local v5    # "element":Lorg/w3c/dom/Element;
    new-instance v0, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cp:ruleset"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    .line 128
    .restart local v0    # "aRule":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_8

    .line 129
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 132
    :cond_8
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_9

    .line 133
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setContext(Landroid/content/Context;)V

    .line 136
    :cond_9
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 137
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setEtag(Ljava/lang/String;)V

    .line 140
    :cond_a
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 145
    .end local v0    # "aRule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v5    # "element":Lorg/w3c/dom/Element;
    .end local v8    # "i":I
    :cond_b
    const-string v1, "RuleSet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rules size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 5
    .param p1, "etag"    # Ljava/lang/String;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    .line 431
    iget-object v2, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/simservs/client/policy/Rule;

    .line 432
    .local v1, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    const-string v2, "RuleSet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rule:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", set etag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {v1, p1}, Lcom/mediatek/simservs/client/policy/Rule;->setEtag(Ljava/lang/String;)V

    goto :goto_0

    .line 435
    .end local v1    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_0
    return-void
.end method

.method public toXmlString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 393
    const/4 v6, 0x0

    .line 394
    .local v6, "root":Lorg/w3c/dom/Element;
    const/4 v9, 0x0

    .line 395
    .local v9, "xmlString":Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 397
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 398
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 399
    .local v1, "document":Lorg/w3c/dom/Document;
    const-string v10, "cp:ruleset"

    invoke-interface {v1, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 400
    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 402
    iget-object v10, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    if-eqz v10, :cond_0

    .line 403
    iget-object v10, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 404
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 405
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/simservs/client/policy/Rule;

    .line 406
    .local v7, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v7, v1}, Lcom/mediatek/simservs/client/policy/Rule;->toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 407
    .local v8, "ruleElement":Lorg/w3c/dom/Element;
    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 411
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "document":Lorg/w3c/dom/Document;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v7    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v8    # "ruleElement":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v5

    .line 413
    .local v5, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v5}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 419
    .end local v5    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_1
    return-object v9

    .line 410
    .restart local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "document":Lorg/w3c/dom/Document;
    :cond_0
    :try_start_1
    invoke-virtual {p0, v6}, Lcom/mediatek/simservs/client/policy/RuleSet;->domToXmlText(Lorg/w3c/dom/Element;)Ljava/lang/String;
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    goto :goto_1

    .line 414
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "document":Lorg/w3c/dom/Document;
    :catch_1
    move-exception v2

    .line 415
    .local v2, "e":Ljavax/xml/transform/TransformerConfigurationException;
    invoke-virtual {v2}, Ljavax/xml/transform/TransformerConfigurationException;->printStackTrace()V

    goto :goto_1

    .line 416
    .end local v2    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_2
    move-exception v2

    .line 417
    .local v2, "e":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v2}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_1
.end method
