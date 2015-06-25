.class final synthetic Lcom/avira/android/blacklist/model/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $SwitchMap$com$avira$android$blacklist$utilities$BLContactManagerHelper$BlacklistOption:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 173
    invoke-static {}, Lcom/avira/android/blacklist/d/j;->values()[Lcom/avira/android/blacklist/d/j;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/avira/android/blacklist/model/d;->$SwitchMap$com$avira$android$blacklist$utilities$BLContactManagerHelper$BlacklistOption:[I

    :try_start_0
    sget-object v0, Lcom/avira/android/blacklist/model/d;->$SwitchMap$com$avira$android$blacklist$utilities$BLContactManagerHelper$BlacklistOption:[I

    sget-object v1, Lcom/avira/android/blacklist/d/j;->CALL:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v1}, Lcom/avira/android/blacklist/d/j;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/avira/android/blacklist/model/d;->$SwitchMap$com$avira$android$blacklist$utilities$BLContactManagerHelper$BlacklistOption:[I

    sget-object v1, Lcom/avira/android/blacklist/d/j;->SMS:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v1}, Lcom/avira/android/blacklist/d/j;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/avira/android/blacklist/model/d;->$SwitchMap$com$avira$android$blacklist$utilities$BLContactManagerHelper$BlacklistOption:[I

    sget-object v1, Lcom/avira/android/blacklist/d/j;->BOTH:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v1}, Lcom/avira/android/blacklist/d/j;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
