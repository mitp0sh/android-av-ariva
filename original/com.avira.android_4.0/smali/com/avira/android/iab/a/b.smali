.class public final Lcom/avira/android/iab/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_INVALID_CONSUMPTION:I = -0x3f2

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE:I = -0x3f1

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"

.field static a:Z

.field static b:Ljava/lang/String;

.field private static n:Lcom/avira/android/iab/a/b;


# instance fields
.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Ljava/lang/String;

.field h:Landroid/content/Context;

.field i:Lcom/android/a/a/a;

.field j:Landroid/content/ServiceConnection;

.field k:I

.field l:Ljava/lang/String;

.field m:Lcom/avira/android/iab/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avira/android/iab/a/b;->a:Z

    .line 67
    const-string v0, "IabHelper"

    sput-object v0, Lcom/avira/android/iab/a/b;->b:Ljava/lang/String;

    .line 163
    const/4 v0, 0x0

    sput-object v0, Lcom/avira/android/iab/a/b;->n:Lcom/avira/android/iab/a/b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean v0, p0, Lcom/avira/android/iab/a/b;->c:Z

    .line 73
    iput-boolean v0, p0, Lcom/avira/android/iab/a/b;->d:Z

    .line 76
    iput-boolean v0, p0, Lcom/avira/android/iab/a/b;->e:Z

    .line 80
    iput-boolean v0, p0, Lcom/avira/android/iab/a/b;->f:Z

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/avira/android/iab/a/b;->g:Ljava/lang/String;

    .line 158
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/iab/a/b;->h:Landroid/content/Context;

    .line 161
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 162
    return-void
.end method

.method private static a(Landroid/os/Bundle;)I
    .locals 4

    .prologue
    .line 961
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 962
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 963
    if-nez v0, :cond_0

    .line 965
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 966
    const/4 v0, 0x0

    .line 971
    :goto_0
    return v0

    .line 968
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 969
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 970
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 971
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 974
    :cond_2
    const-string v1, "Unexpected type for bundle response code."

    invoke-static {v1}, Lcom/avira/android/iab/a/b;->c(Ljava/lang/String;)V

    .line 975
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avira/android/iab/a/b;->c(Ljava/lang/String;)V

    .line 976
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type for bundle response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Lcom/avira/android/iab/a/i;Ljava/lang/String;)I
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 1023
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Querying owned items, item type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Package name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/avira/android/iab/a/b;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 1027
    const/4 v0, 0x0

    .line 1032
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling getPurchases with continuation token: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 1033
    iget-object v1, p0, Lcom/avira/android/iab/a/b;->i:Lcom/android/a/a/a;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/avira/android/iab/a/b;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p2, v0}, Lcom/android/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 1035
    invoke-static {v5}, Lcom/avira/android/iab/a/b;->a(Landroid/os/Bundle;)I

    move-result v0

    .line 1036
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Owned items response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 1037
    if-eqz v0, :cond_1

    .line 1039
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPurchases() failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/avira/android/iab/a/b;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    move v4, v0

    .line 1086
    :goto_0
    return v4

    .line 1042
    :cond_1
    const-string v0, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1046
    :cond_2
    const-string v0, "Bundle returned from getPurchases() doesn\'t contain required fields."

    invoke-static {v0}, Lcom/avira/android/iab/a/b;->c(Ljava/lang/String;)V

    .line 1047
    const/16 v4, -0x3ea

    goto :goto_0

    .line 1050
    :cond_3
    const-string v0, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1051
    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1052
    const-string v0, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    move v3, v4

    .line 1054
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 1056
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1057
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1058
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1061
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Sku is owned: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 1062
    new-instance v2, Lcom/avira/android/iab/models/IABPurchase;

    invoke-direct {v2, p2, v0, v1}, Lcom/avira/android/iab/models/IABPurchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    invoke-virtual {v2}, Lcom/avira/android/iab/models/IABPurchase;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1066
    const-string v1, "BUG: empty/null token!"

    sget-object v9, Lcom/avira/android/iab/a/b;->b:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "In-app billing warning: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "Purchase data: "

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 1071
    :cond_4
    iget-object v0, p1, Lcom/avira/android/iab/a/i;->b:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/avira/android/iab/models/IABPurchase;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 1082
    :cond_5
    const-string v0, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1083
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Continuation token: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 1084
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/avira/android/iab/a/i;Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avira/android/iab/a/i;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1103
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 1104
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 1105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1106
    invoke-virtual {p2, p1}, Lcom/avira/android/iab/a/i;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1107
    if-eqz p3, :cond_1

    .line 1109
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1111
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1113
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1118
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 1120
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    move v0, v1

    .line 1151
    :goto_1
    return v0

    .line 1124
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1125
    const-string v3, "ITEM_ID_LIST"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1126
    iget-object v2, p0, Lcom/avira/android/iab/a/b;->i:Lcom/android/a/a/a;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/avira/android/iab/a/b;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, p1, v0}, Lcom/android/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1128
    const-string v2, "DETAILS_LIST"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1130
    invoke-static {v0}, Lcom/avira/android/iab/a/b;->a(Landroid/os/Bundle;)I

    move-result v0

    .line 1131
    if-eqz v0, :cond_3

    .line 1133
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSkuDetails() failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/avira/android/iab/a/b;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    goto :goto_1

    .line 1138
    :cond_3
    const-string v0, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-static {v0}, Lcom/avira/android/iab/a/b;->c(Ljava/lang/String;)V

    .line 1139
    const/16 v0, -0x3ea

    goto :goto_1

    .line 1143
    :cond_4
    const-string v2, "DETAILS_LIST"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1145
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1147
    new-instance v3, Lcom/avira/android/iab/models/IABSkuDetails;

    invoke-direct {v3, p1, v0}, Lcom/avira/android/iab/models/IABSkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Got sku details: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 1149
    iget-object v0, p2, Lcom/avira/android/iab/a/i;->a:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/avira/android/iab/models/IABSkuDetails;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    move v0, v1

    .line 1151
    goto :goto_1
.end method

.method public static a()Lcom/avira/android/iab/a/b;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/avira/android/iab/a/b;->n:Lcom/avira/android/iab/a/b;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/avira/android/iab/a/b;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/avira/android/iab/a/b;->n:Lcom/avira/android/iab/a/b;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/avira/android/iab/a/b;

    invoke-direct {v0, p0}, Lcom/avira/android/iab/a/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/avira/android/iab/a/b;->n:Lcom/avira/android/iab/a/b;

    .line 171
    :cond_0
    sget-object v0, Lcom/avira/android/iab/a/b;->n:Lcom/avira/android/iab/a/b;

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 924
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 925
    const-string v0, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 927
    const-string v1, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 933
    const/16 v2, -0x3e8

    if-gt p0, v2, :cond_1

    .line 935
    rsub-int v0, p0, -0x3e8

    .line 936
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 937
    aget-object v0, v1, v0

    .line 944
    :goto_0
    return-object v0

    .line 939
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Unknown IAB Helper Error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 941
    :cond_1
    if-ltz p0, :cond_2

    array-length v1, v0

    if-lt p0, v1, :cond_3

    .line 942
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 944
    :cond_3
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 950
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 951
    iget-boolean v0, p0, Lcom/avira/android/iab/a/b;->c:Z

    if-nez v0, :cond_0

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal state for operation ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/iab/a/b;->c(Ljava/lang/String;)V

    .line 954
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 956
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1004
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 1005
    iget-boolean v0, p0, Lcom/avira/android/iab/a/b;->f:Z

    if-eqz v0, :cond_0

    .line 1006
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t start async operation ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/iab/a/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1008
    :cond_0
    iput-object p1, p0, Lcom/avira/android/iab/a/b;->g:Ljava/lang/String;

    .line 1009
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avira/android/iab/a/b;->f:Z

    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 1011
    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1213
    sget-object v0, Lcom/avira/android/iab/a/b;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In-app billing error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    return-void
.end method

.method static f()V
    .locals 1

    .prologue
    .line 1207
    sget-boolean v0, Lcom/avira/android/iab/a/b;->a:Z

    if-eqz v0, :cond_0

    .line 1208
    sget-object v0, Lcom/avira/android/iab/a/b;->b:Ljava/lang/String;

    .line 1209
    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 367
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 368
    iget-boolean v0, p0, Lcom/avira/android/iab/a/b;->d:Z

    if-eqz v0, :cond_0

    .line 369
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(ZLjava/util/List;)Lcom/avira/android/iab/a/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avira/android/iab/a/i;"
        }
    .end annotation

    .prologue
    .line 641
    invoke-virtual {p0, p1, p2}, Lcom/avira/android/iab/a/b;->b(ZLjava/util/List;)Lcom/avira/android/iab/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Lcom/avira/android/iab/a/f;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 425
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 426
    const-string v4, "subs"

    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    invoke-direct {p0}, Lcom/avira/android/iab/a/b;->g()V

    const-string v0, "launchPurchaseFlow"

    invoke-direct {p0, v0}, Lcom/avira/android/iab/a/b;->a(Ljava/lang/String;)V

    const-string v0, "launchPurchaseFlow"

    invoke-direct {p0, v0}, Lcom/avira/android/iab/a/b;->b(Ljava/lang/String;)V

    if-nez p3, :cond_1

    const-string v0, "No listener OnIabPurchaseFinishedListener!!!!"

    invoke-static {v0}, Lcom/avira/android/iab/a/b;->c(Ljava/lang/String;)V

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    const-string v0, "subs"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/avira/android/iab/a/b;->e:Z

    if-nez v0, :cond_2

    new-instance v0, Lcom/avira/android/iab/a/j;

    const/16 v1, -0x3f1

    const-string v2, "Subscriptions are not available."

    invoke-direct {v0, v1, v2}, Lcom/avira/android/iab/a/j;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/avira/android/iab/a/b;->e()V

    if-eqz p3, :cond_0

    invoke-interface {p3, v0, v7}, Lcom/avira/android/iab/a/f;->a(Lcom/avira/android/iab/a/j;Lcom/avira/android/iab/models/IABPurchase;)V

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Constructing buy intent for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    iget-object v0, p0, Lcom/avira/android/iab/a/b;->i:Lcom/android/a/a/a;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/avira/android/iab/a/b;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/iab/a/b;->a(Landroid/os/Bundle;)I

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to buy item, Error response: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/avira/android/iab/a/b;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/iab/a/b;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/avira/android/iab/a/b;->e()V

    new-instance v0, Lcom/avira/android/iab/a/j;

    const-string v2, "Unable to buy item"

    invoke-direct {v0, v1, v2}, Lcom/avira/android/iab/a/j;-><init>(ILjava/lang/String;)V

    if-eqz p3, :cond_0

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Lcom/avira/android/iab/a/f;->a(Lcom/avira/android/iab/a/j;Lcom/avira/android/iab/models/IABPurchase;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SendIntentException while launching purchase flow for sku "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/iab/a/b;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/avira/android/iab/a/b;->e()V

    new-instance v0, Lcom/avira/android/iab/a/j;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v0, v1, v2}, Lcom/avira/android/iab/a/j;-><init>(ILjava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-interface {p3, v0, v7}, Lcom/avira/android/iab/a/f;->a(Lcom/avira/android/iab/a/j;Lcom/avira/android/iab/models/IABPurchase;)V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    const-string v1, "BUY_INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Launching buy intent for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Request code: 10001"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    const/16 v1, 0x2711

    iput v1, p0, Lcom/avira/android/iab/a/b;->k:I

    iput-object p3, p0, Lcom/avira/android/iab/a/b;->m:Lcom/avira/android/iab/a/f;

    iput-object v4, p0, Lcom/avira/android/iab/a/b;->l:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/16 v2, 0x2711

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RemoteException while launching purchase flow for sku "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/iab/a/b;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/avira/android/iab/a/b;->e()V

    new-instance v0, Lcom/avira/android/iab/a/j;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v0, v1, v2}, Lcom/avira/android/iab/a/j;-><init>(ILjava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-interface {p3, v0, v7}, Lcom/avira/android/iab/a/f;->a(Lcom/avira/android/iab/a/j;Lcom/avira/android/iab/models/IABPurchase;)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/avira/android/iab/a/g;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 226
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 228
    invoke-direct {p0}, Lcom/avira/android/iab/a/b;->g()V

    .line 229
    iget-boolean v2, p0, Lcom/avira/android/iab/a/b;->c:Z

    if-eqz v2, :cond_0

    .line 230
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IAB helper is already set up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 234
    new-instance v2, Lcom/avira/android/iab/a/c;

    invoke-direct {v2, p0, p1}, Lcom/avira/android/iab/a/c;-><init>(Lcom/avira/android/iab/a/b;Lcom/avira/android/iab/a/g;)V

    iput-object v2, p0, Lcom/avira/android/iab/a/b;->j:Landroid/content/ServiceConnection;

    .line 303
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    const-string v3, "com.android.vending"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    iget-object v3, p0, Lcom/avira/android/iab/a/b;->h:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 308
    iget-object v3, p0, Lcom/avira/android/iab/a/b;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 309
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 315
    :cond_1
    if-eqz v0, :cond_3

    .line 318
    iget-object v0, p0, Lcom/avira/android/iab/a/b;->h:Landroid/content/Context;

    iget-object v3, p0, Lcom/avira/android/iab/a/b;->j:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 329
    :cond_2
    :goto_0
    return-void

    .line 323
    :cond_3
    if-eqz p1, :cond_2

    .line 325
    new-instance v0, Lcom/avira/android/iab/a/j;

    const/4 v1, 0x3

    const-string v2, "Billing service unavailable on device."

    invoke-direct {v0, v1, v2}, Lcom/avira/android/iab/a/j;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/avira/android/iab/a/g;->a(Lcom/avira/android/iab/a/j;)V

    goto :goto_0
.end method

.method public final a(Lcom/avira/android/iab/a/h;)V
    .locals 3

    .prologue
    .line 786
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 787
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/avira/android/iab/a/b;->g()V

    const-string v1, "queryInventory"

    invoke-direct {p0, v1}, Lcom/avira/android/iab/a/b;->a(Ljava/lang/String;)V

    const-string v1, "refresh inventory"

    invoke-direct {p0, v1}, Lcom/avira/android/iab/a/b;->b(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/avira/android/iab/a/d;

    invoke-direct {v2, p0, p1, v0}, Lcom/avira/android/iab/a/d;-><init>(Lcom/avira/android/iab/a/b;Lcom/avira/android/iab/a/h;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 788
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 192
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 193
    invoke-direct {p0}, Lcom/avira/android/iab/a/b;->g()V

    .line 194
    sput-boolean p1, Lcom/avira/android/iab/a/b;->a:Z

    .line 195
    return-void
.end method

.method public final a(IILandroid/content/Intent;)Z
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/16 v7, -0x3ea

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 536
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 538
    iget v0, p0, Lcom/avira/android/iab/a/b;->k:I

    if-eq p1, v0, :cond_0

    .line 636
    :goto_0
    return v1

    .line 541
    :cond_0
    invoke-direct {p0}, Lcom/avira/android/iab/a/b;->g()V

    .line 542
    const-string v0, "handleActivityResult"

    invoke-direct {p0, v0}, Lcom/avira/android/iab/a/b;->a(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0}, Lcom/avira/android/iab/a/b;->e()V

    .line 547
    if-nez p3, :cond_2

    .line 549
    const-string v0, "Null data in IAB activity result."

    invoke-static {v0}, Lcom/avira/android/iab/a/b;->c(Ljava/lang/String;)V

    .line 550
    new-instance v0, Lcom/avira/android/iab/a/j;

    const-string v1, "Null data in IAB result"

    invoke-direct {v0, v7, v1}, Lcom/avira/android/iab/a/j;-><init>(ILjava/lang/String;)V

    .line 551
    iget-object v1, p0, Lcom/avira/android/iab/a/b;->m:Lcom/avira/android/iab/a/f;

    if-eqz v1, :cond_1

    .line 552
    iget-object v1, p0, Lcom/avira/android/iab/a/b;->m:Lcom/avira/android/iab/a/f;

    invoke-interface {v1, v0, v6}, Lcom/avira/android/iab/a/f;->a(Lcom/avira/android/iab/a/j;Lcom/avira/android/iab/models/IABPurchase;)V

    :cond_1
    move v1, v2

    .line 553
    goto :goto_0

    .line 556
    :cond_2
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "RESPONSE_CODE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "Intent with no response code, assuming OK (known issue)"

    invoke-static {v0}, Lcom/avira/android/iab/a/b;->c(Ljava/lang/String;)V

    move v0, v1

    .line 557
    :goto_1
    const-string v3, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 558
    const-string v4, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 560
    if-ne p2, v8, :cond_b

    if-nez v0, :cond_b

    .line 562
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Purchase data: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Data signature: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Extras: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Expected item type: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/avira/android/iab/a/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 568
    if-eqz v3, :cond_3

    if-nez v4, :cond_8

    .line 570
    :cond_3
    const-string v0, "BUG: either purchaseData or dataSignature is null."

    invoke-static {v0}, Lcom/avira/android/iab/a/b;->c(Ljava/lang/String;)V

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Extras: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 572
    new-instance v0, Lcom/avira/android/iab/a/j;

    const/16 v1, -0x3f0

    const-string v3, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v0, v1, v3}, Lcom/avira/android/iab/a/j;-><init>(ILjava/lang/String;)V

    .line 573
    iget-object v1, p0, Lcom/avira/android/iab/a/b;->m:Lcom/avira/android/iab/a/f;

    if-eqz v1, :cond_4

    .line 574
    iget-object v1, p0, Lcom/avira/android/iab/a/b;->m:Lcom/avira/android/iab/a/f;

    invoke-interface {v1, v0, v6}, Lcom/avira/android/iab/a/f;->a(Lcom/avira/android/iab/a/j;Lcom/avira/android/iab/models/IABPurchase;)V

    :cond_4
    move v1, v2

    .line 575
    goto/16 :goto_0

    .line 556
    :cond_5
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_1

    :cond_6
    instance-of v3, v0, Ljava/lang/Long;

    if-eqz v3, :cond_7

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-int v0, v4

    goto/16 :goto_1

    :cond_7
    const-string v1, "Unexpected type for intent response code."

    invoke-static {v1}, Lcom/avira/android/iab/a/b;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avira/android/iab/a/b;->c(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type for intent response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 581
    :cond_8
    :try_start_0
    new-instance v0, Lcom/avira/android/iab/models/IABPurchase;

    iget-object v5, p0, Lcom/avira/android/iab/a/b;->l:Ljava/lang/String;

    invoke-direct {v0, v5, v3, v4}, Lcom/avira/android/iab/models/IABPurchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    iget-object v3, p0, Lcom/avira/android/iab/a/b;->m:Lcom/avira/android/iab/a/f;

    if-eqz v3, :cond_9

    .line 608
    iget-object v3, p0, Lcom/avira/android/iab/a/b;->m:Lcom/avira/android/iab/a/f;

    new-instance v4, Lcom/avira/android/iab/a/j;

    const-string v5, "Success"

    invoke-direct {v4, v1, v5}, Lcom/avira/android/iab/a/j;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4, v0}, Lcom/avira/android/iab/a/f;->a(Lcom/avira/android/iab/a/j;Lcom/avira/android/iab/models/IABPurchase;)V

    :cond_9
    :goto_2
    move v1, v2

    .line 636
    goto/16 :goto_0

    .line 598
    :catch_0
    move-exception v0

    const-string v0, "Failed to parse purchase data."

    invoke-static {v0}, Lcom/avira/android/iab/a/b;->c(Ljava/lang/String;)V

    .line 599
    new-instance v0, Lcom/avira/android/iab/a/j;

    const-string v1, "Failed to parse purchase data."

    invoke-direct {v0, v7, v1}, Lcom/avira/android/iab/a/j;-><init>(ILjava/lang/String;)V

    .line 601
    iget-object v1, p0, Lcom/avira/android/iab/a/b;->m:Lcom/avira/android/iab/a/f;

    if-eqz v1, :cond_a

    .line 602
    iget-object v1, p0, Lcom/avira/android/iab/a/b;->m:Lcom/avira/android/iab/a/f;

    invoke-interface {v1, v0, v6}, Lcom/avira/android/iab/a/f;->a(Lcom/avira/android/iab/a/j;Lcom/avira/android/iab/models/IABPurchase;)V

    :cond_a
    move v1, v2

    .line 603
    goto/16 :goto_0

    .line 611
    :cond_b
    if-ne p2, v8, :cond_c

    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Result code was OK but in-app billing response was not OK: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/avira/android/iab/a/b;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 615
    iget-object v1, p0, Lcom/avira/android/iab/a/b;->m:Lcom/avira/android/iab/a/f;

    if-eqz v1, :cond_9

    .line 617
    new-instance v1, Lcom/avira/android/iab/a/j;

    const-string v3, "Problem purchashing item."

    invoke-direct {v1, v0, v3}, Lcom/avira/android/iab/a/j;-><init>(ILjava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/avira/android/iab/a/b;->m:Lcom/avira/android/iab/a/f;

    invoke-interface {v0, v1, v6}, Lcom/avira/android/iab/a/f;->a(Lcom/avira/android/iab/a/j;Lcom/avira/android/iab/models/IABPurchase;)V

    goto :goto_2

    .line 621
    :cond_c
    if-nez p2, :cond_d

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Purchase canceled - Response: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/avira/android/iab/a/b;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 624
    new-instance v0, Lcom/avira/android/iab/a/j;

    const/16 v1, -0x3ed

    const-string v3, "User canceled."

    invoke-direct {v0, v1, v3}, Lcom/avira/android/iab/a/j;-><init>(ILjava/lang/String;)V

    .line 625
    iget-object v1, p0, Lcom/avira/android/iab/a/b;->m:Lcom/avira/android/iab/a/f;

    if-eqz v1, :cond_9

    .line 626
    iget-object v1, p0, Lcom/avira/android/iab/a/b;->m:Lcom/avira/android/iab/a/f;

    invoke-interface {v1, v0, v6}, Lcom/avira/android/iab/a/f;->a(Lcom/avira/android/iab/a/j;Lcom/avira/android/iab/models/IABPurchase;)V

    goto :goto_2

    .line 630
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Purchase failed. Result code: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". Response: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/avira/android/iab/a/b;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/iab/a/b;->c(Ljava/lang/String;)V

    .line 632
    new-instance v0, Lcom/avira/android/iab/a/j;

    const/16 v1, -0x3ee

    const-string v3, "Unknown purchase response."

    invoke-direct {v0, v1, v3}, Lcom/avira/android/iab/a/j;-><init>(ILjava/lang/String;)V

    .line 633
    iget-object v1, p0, Lcom/avira/android/iab/a/b;->m:Lcom/avira/android/iab/a/f;

    if-eqz v1, :cond_9

    .line 634
    iget-object v1, p0, Lcom/avira/android/iab/a/b;->m:Lcom/avira/android/iab/a/f;

    invoke-interface {v1, v0, v6}, Lcom/avira/android/iab/a/f;->a(Lcom/avira/android/iab/a/j;Lcom/avira/android/iab/models/IABPurchase;)V

    goto/16 :goto_2
.end method

.method public final b(ZLjava/util/List;)Lcom/avira/android/iab/a/i;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avira/android/iab/a/i;"
        }
    .end annotation

    .prologue
    .line 663
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 664
    invoke-direct {p0}, Lcom/avira/android/iab/a/b;->g()V

    .line 665
    const-string v0, "queryInventory"

    invoke-direct {p0, v0}, Lcom/avira/android/iab/a/b;->a(Ljava/lang/String;)V

    .line 668
    :try_start_0
    new-instance v0, Lcom/avira/android/iab/a/i;

    invoke-direct {v0}, Lcom/avira/android/iab/a/i;-><init>()V

    .line 669
    const-string v1, "inapp"

    invoke-direct {p0, v0, v1}, Lcom/avira/android/iab/a/b;->a(Lcom/avira/android/iab/a/i;Ljava/lang/String;)I

    move-result v1

    .line 670
    if-eqz v1, :cond_0

    .line 672
    new-instance v0, Lcom/avira/android/iab/a/a;

    const-string v2, "Error refreshing inventory (querying owned items)."

    invoke-direct {v0, v1, v2}, Lcom/avira/android/iab/a/a;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 705
    :catch_0
    move-exception v0

    .line 707
    new-instance v1, Lcom/avira/android/iab/a/a;

    const/16 v2, -0x3e9

    const-string v3, "Remote exception while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lcom/avira/android/iab/a/a;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 675
    :cond_0
    if-eqz p1, :cond_1

    .line 677
    :try_start_1
    const-string v1, "inapp"

    invoke-direct {p0, v1, v0, p2}, Lcom/avira/android/iab/a/b;->a(Ljava/lang/String;Lcom/avira/android/iab/a/i;Ljava/util/List;)I

    move-result v1

    .line 678
    if-eqz v1, :cond_1

    .line 680
    new-instance v0, Lcom/avira/android/iab/a/a;

    const-string v2, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v0, v1, v2}, Lcom/avira/android/iab/a/a;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 709
    :catch_1
    move-exception v0

    .line 711
    new-instance v1, Lcom/avira/android/iab/a/a;

    const/16 v2, -0x3ea

    const-string v3, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lcom/avira/android/iab/a/a;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 685
    :cond_1
    :try_start_2
    iget-boolean v1, p0, Lcom/avira/android/iab/a/b;->e:Z

    if-eqz v1, :cond_3

    .line 687
    const-string v1, "subs"

    invoke-direct {p0, v0, v1}, Lcom/avira/android/iab/a/b;->a(Lcom/avira/android/iab/a/i;Ljava/lang/String;)I

    move-result v1

    .line 688
    if-eqz v1, :cond_2

    .line 690
    new-instance v0, Lcom/avira/android/iab/a/a;

    const-string v2, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v0, v1, v2}, Lcom/avira/android/iab/a/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 693
    :cond_2
    if-eqz p1, :cond_3

    .line 695
    const-string v1, "subs"

    invoke-direct {p0, v1, v0, p2}, Lcom/avira/android/iab/a/b;->a(Ljava/lang/String;Lcom/avira/android/iab/a/i;Ljava/util/List;)I

    move-result v1

    .line 696
    if-eqz v1, :cond_3

    .line 698
    new-instance v0, Lcom/avira/android/iab/a/a;

    const-string v2, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v0, v1, v2}, Lcom/avira/android/iab/a/a;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 703
    :cond_3
    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/avira/android/iab/a/b;->c:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/avira/android/iab/a/b;->f:Z

    return v0
.end method

.method public final d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 348
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 349
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avira/android/iab/a/b;->c:Z

    .line 351
    iget-object v0, p0, Lcom/avira/android/iab/a/b;->j:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 353
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 354
    iget-object v0, p0, Lcom/avira/android/iab/a/b;->h:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/avira/android/iab/a/b;->h:Landroid/content/Context;

    iget-object v1, p0, Lcom/avira/android/iab/a/b;->j:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 357
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avira/android/iab/a/b;->d:Z

    .line 358
    iput-object v2, p0, Lcom/avira/android/iab/a/b;->h:Landroid/content/Context;

    .line 359
    iput-object v2, p0, Lcom/avira/android/iab/a/b;->j:Landroid/content/ServiceConnection;

    .line 360
    iput-object v2, p0, Lcom/avira/android/iab/a/b;->i:Lcom/android/a/a/a;

    .line 361
    iput-object v2, p0, Lcom/avira/android/iab/a/b;->m:Lcom/avira/android/iab/a/f;

    .line 362
    sput-object v2, Lcom/avira/android/iab/a/b;->n:Lcom/avira/android/iab/a/b;

    .line 363
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 1015
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 1016
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ending async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/avira/android/iab/a/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 1017
    const-string v0, ""

    iput-object v0, p0, Lcom/avira/android/iab/a/b;->g:Ljava/lang/String;

    .line 1018
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avira/android/iab/a/b;->f:Z

    .line 1019
    return-void
.end method
