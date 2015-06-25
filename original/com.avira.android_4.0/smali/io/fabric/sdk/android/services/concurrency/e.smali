.class final synthetic Lio/fabric/sdk/android/services/concurrency/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $SwitchMap$io$fabric$sdk$android$services$concurrency$AsyncTask$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 580
    invoke-static {}, Lio/fabric/sdk/android/services/concurrency/j;->values()[Lio/fabric/sdk/android/services/concurrency/j;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/fabric/sdk/android/services/concurrency/e;->$SwitchMap$io$fabric$sdk$android$services$concurrency$AsyncTask$Status:[I

    :try_start_0
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/e;->$SwitchMap$io$fabric$sdk$android$services$concurrency$AsyncTask$Status:[I

    sget-object v1, Lio/fabric/sdk/android/services/concurrency/j;->RUNNING:Lio/fabric/sdk/android/services/concurrency/j;

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/concurrency/j;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/e;->$SwitchMap$io$fabric$sdk$android$services$concurrency$AsyncTask$Status:[I

    sget-object v1, Lio/fabric/sdk/android/services/concurrency/j;->FINISHED:Lio/fabric/sdk/android/services/concurrency/j;

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/concurrency/j;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
