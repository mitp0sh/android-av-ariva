.class public Lcom/avira/android/common/web/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACCOUNT_ERROR_CODE_MAX:I = 0x3e7

.field public static final ACCOUNT_ERROR_CODE_MIN:I = 0x384

.field private static final ERROR_DESCRIPTION_MAPPING:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/avira/android/common/web/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final ERROR_DESC_JSON_FORMAT:Ljava/lang/String; = "{\"status\":\"error\",\"errorCode\":%d,\"errorMsg\":\"%s\"}"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 14
    const-class v0, Lcom/avira/android/common/web/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/common/web/a;->TAG:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avira/android/common/web/a;->ERROR_DESCRIPTION_MAPPING:Ljava/util/HashMap;

    .line 81
    invoke-static {}, Lcom/avira/android/common/web/c;->values()[Lcom/avira/android/common/web/c;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 83
    sget-object v4, Lcom/avira/android/common/web/a;->ERROR_DESCRIPTION_MAPPING:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/avira/android/common/web/c;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 113
    sget-object v0, Lcom/avira/android/common/web/a;->ERROR_DESCRIPTION_MAPPING:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/common/web/c;

    .line 117
    if-nez v0, :cond_0

    .line 119
    sget-object v0, Lcom/avira/android/common/web/a;->ERROR_DESCRIPTION_MAPPING:Ljava/util/HashMap;

    sget-object v1, Lcom/avira/android/common/web/c;->UNKNOWN_ERROR:Lcom/avira/android/common/web/c;

    invoke-virtual {v1}, Lcom/avira/android/common/web/c;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/common/web/c;

    .line 120
    sget-object v1, Lcom/avira/android/common/web/a;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found an untreated server error code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    invoke-virtual {v0}, Lcom/avira/android/common/web/c;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 125
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v2

    .line 127
    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/avira/android/ApplicationService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/avira/android/common/web/a;->a(Ljava/lang/String;Lcom/avira/android/common/web/c;)Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_0
    const-string v1, "{\"status\":\"error\",\"errorCode\":%d,\"errorMsg\":\"%s\"}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 139
    return-object v0

    .line 133
    :cond_1
    const v1, 0x7f080161

    invoke-virtual {v2, v1}, Lcom/avira/android/ApplicationService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/avira/android/common/web/a;->a(Ljava/lang/String;Lcom/avira/android/common/web/c;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lcom/avira/android/common/web/c;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 89
    sget-object v0, Lcom/avira/android/common/web/b;->$SwitchMap$com$avira$android$common$web$ErrorCodeDescriptionMapper$Error:[I

    invoke-virtual {p1}, Lcom/avira/android/common/web/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 96
    :goto_0
    return-object p0

    .line 92
    :pswitch_0
    new-instance v0, Lcom/avira/android/userprofile/s;

    invoke-direct {v0}, Lcom/avira/android/userprofile/s;-><init>()V

    .line 93
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/avira/android/userprofile/s;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(I)Lcom/avira/android/common/web/c;
    .locals 2

    .prologue
    .line 145
    sget-object v0, Lcom/avira/android/common/web/a;->ERROR_DESCRIPTION_MAPPING:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/common/web/c;

    .line 147
    if-eqz v0, :cond_0

    .line 153
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/avira/android/common/web/c;->UNKNOWN_ERROR:Lcom/avira/android/common/web/c;

    goto :goto_0
.end method
