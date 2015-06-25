.class public final Lcom/avira/android/utilities/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-static {}, Lcom/google/c/a/c;->a()Lcom/google/c/a/c;

    move-result-object v1

    .line 28
    invoke-virtual {v1, p0, p1}, Lcom/google/c/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/c/a/d;

    move-result-object v1

    .line 29
    sget-object v2, Lcom/avira/android/utilities/ab;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$MatchType:[I

    invoke-virtual {v1}, Lcom/google/c/a/d;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 34
    :goto_0
    return v0

    .line 33
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
