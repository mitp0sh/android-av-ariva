.class final Lcom/avira/android/antivirus/bi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DETECTION_DESCRIPTION_MAPPING:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 314
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avira/android/antivirus/bi;->DETECTION_DESCRIPTION_MAPPING:Ljava/util/HashMap;

    .line 317
    invoke-static {}, Lcom/avira/android/antivirus/bj;->values()[Lcom/avira/android/antivirus/bj;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 319
    sget-object v4, Lcom/avira/android/antivirus/bi;->DETECTION_DESCRIPTION_MAPPING:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/avira/android/antivirus/bj;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/avira/android/antivirus/bj;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 336
    const/4 v1, 0x0

    .line 337
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 338
    aget-object v0, v0, v3

    .line 340
    sget-object v2, Lcom/avira/android/antivirus/bi;->DETECTION_DESCRIPTION_MAPPING:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 342
    if-eqz v0, :cond_0

    .line 344
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/avira/android/ApplicationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 348
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
