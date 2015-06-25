.class Lcom/mixpanel/android/mpmetrics/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mixpanel/android/mpmetrics/v;


# instance fields
.field final synthetic a:Lcom/mixpanel/android/mpmetrics/r;


# direct methods
.method private constructor <init>(Lcom/mixpanel/android/mpmetrics/r;)V
    .locals 0

    .prologue
    .line 813
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/w;->a:Lcom/mixpanel/android/mpmetrics/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mixpanel/android/mpmetrics/r;B)V
    .locals 0

    .prologue
    .line 813
    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/w;-><init>(Lcom/mixpanel/android/mpmetrics/r;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 1138
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1139
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/w;->b()Ljava/lang/String;

    move-result-object v1

    .line 1141
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1142
    const-string v2, "$token"

    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/w;->a:Lcom/mixpanel/android/mpmetrics/r;

    invoke-static {v3}, Lcom/mixpanel/android/mpmetrics/r;->c(Lcom/mixpanel/android/mpmetrics/r;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1143
    const-string v2, "$time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1145
    if-eqz v1, :cond_0

    .line 1146
    const-string v1, "$distinct_id"

    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/w;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1149
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/w;->a:Lcom/mixpanel/android/mpmetrics/r;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/r;->a(Lcom/mixpanel/android/mpmetrics/r;)Lcom/mixpanel/android/mpmetrics/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/ah;->e()V

    .line 1077
    const-string v0, "$android_devices"

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    const-string v1, "$set"

    invoke-direct {p0, v1, v0}, Lcom/mixpanel/android/mpmetrics/w;->b(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/w;->a:Lcom/mixpanel/android/mpmetrics/r;

    invoke-static {v1, v0}, Lcom/mixpanel/android/mpmetrics/r;->a(Lcom/mixpanel/android/mpmetrics/r;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1078
    :goto_0
    return-void

    .line 1077
    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "MixpanelAPI"

    const-string v2, "Exception setting people properties"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "MixpanelAPI"

    const-string v2, "set"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final a(Lcom/mixpanel/android/mpmetrics/ap;Landroid/app/Activity;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 983
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1014
    :cond_0
    :goto_0
    return-void

    .line 988
    :cond_1
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/k;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 993
    const/4 v5, 0x0

    .line 994
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/w;->a:Lcom/mixpanel/android/mpmetrics/r;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/r;->e(Lcom/mixpanel/android/mpmetrics/r;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 995
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/w;->a:Lcom/mixpanel/android/mpmetrics/r;

    invoke-static {v2}, Lcom/mixpanel/android/mpmetrics/r;->f(Lcom/mixpanel/android/mpmetrics/r;)I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 996
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/w;->a:Lcom/mixpanel/android/mpmetrics/r;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/r;->g(Lcom/mixpanel/android/mpmetrics/r;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 997
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/w;->a:Lcom/mixpanel/android/mpmetrics/r;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/r;->h(Lcom/mixpanel/android/mpmetrics/r;)I

    move-result v5

    .line 999
    :cond_2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/w;->a:Lcom/mixpanel/android/mpmetrics/r;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/mixpanel/android/mpmetrics/r;->a(Lcom/mixpanel/android/mpmetrics/r;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1000
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/w;->a:Lcom/mixpanel/android/mpmetrics/r;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/mixpanel/android/mpmetrics/r;->a(Lcom/mixpanel/android/mpmetrics/r;I)I

    .line 1001
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/w;->a:Lcom/mixpanel/android/mpmetrics/r;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/mixpanel/android/mpmetrics/r;->b(Lcom/mixpanel/android/mpmetrics/r;I)I

    .line 1002
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1004
    if-eqz v4, :cond_3

    .line 1005
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/w;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/w;->a:Lcom/mixpanel/android/mpmetrics/r;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/r;->c(Lcom/mixpanel/android/mpmetrics/r;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/mixpanel/android/mpmetrics/SurveyState;->a(Lcom/mixpanel/android/mpmetrics/ap;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 1002
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1007
    :cond_3
    new-instance v0, Lcom/mixpanel/android/mpmetrics/aa;

    invoke-direct {v0, p0, p1, p2}, Lcom/mixpanel/android/mpmetrics/aa;-><init>(Lcom/mixpanel/android/mpmetrics/w;Lcom/mixpanel/android/mpmetrics/ap;Landroid/app/Activity;)V

    invoke-static {p2, v0}, Lcom/mixpanel/android/mpmetrics/g;->a(Landroid/app/Activity;Lcom/mixpanel/android/mpmetrics/j;)V

    goto :goto_0
.end method

.method public final a(Lcom/mixpanel/android/mpmetrics/at;Landroid/app/Activity;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 956
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/w;->a:Lcom/mixpanel/android/mpmetrics/r;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/r;->e(Lcom/mixpanel/android/mpmetrics/r;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 957
    :try_start_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/w;->a:Lcom/mixpanel/android/mpmetrics/r;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/mixpanel/android/mpmetrics/r;->a(Lcom/mixpanel/android/mpmetrics/r;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 958
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/w;->a:Lcom/mixpanel/android/mpmetrics/r;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/mixpanel/android/mpmetrics/r;->a(Lcom/mixpanel/android/mpmetrics/r;I)I

    .line 959
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/w;->a:Lcom/mixpanel/android/mpmetrics/r;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/mixpanel/android/mpmetrics/r;->b(Lcom/mixpanel/android/mpmetrics/r;I)I

    .line 960
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    new-instance v0, Lcom/mixpanel/android/mpmetrics/y;

    invoke-direct {v0, p0, p2, p1}, Lcom/mixpanel/android/mpmetrics/y;-><init>(Lcom/mixpanel/android/mpmetrics/w;Landroid/app/Activity;Lcom/mixpanel/android/mpmetrics/at;)V

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/w;->a:Lcom/mixpanel/android/mpmetrics/r;

    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/r;->b(Lcom/mixpanel/android/mpmetrics/r;)Lcom/mixpanel/android/mpmetrics/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/t;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/w;->a:Lcom/mixpanel/android/mpmetrics/r;

    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/r;->c(Lcom/mixpanel/android/mpmetrics/r;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/w;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mixpanel/android/mpmetrics/x;

    invoke-direct {v3, p0, v0}, Lcom/mixpanel/android/mpmetrics/x;-><init>(Lcom/mixpanel/android/mpmetrics/w;Lcom/mixpanel/android/mpmetrics/at;)V

    if-nez v2, :cond_1

    .line 978
    :cond_0
    :goto_0
    return-void

    .line 960
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 962
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xa

    if-ge v4, v5, :cond_2

    invoke-interface {v0, v6}, Lcom/mixpanel/android/mpmetrics/at;->a(Lcom/mixpanel/android/mpmetrics/ap;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/mixpanel/android/mpmetrics/c;

    invoke-direct {v0, v3, v2, v1}, Lcom/mixpanel/android/mpmetrics/c;-><init>(Lcom/mixpanel/android/mpmetrics/at;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/w;->a:Lcom/mixpanel/android/mpmetrics/r;

    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/r;->d(Lcom/mixpanel/android/mpmetrics/r;)Lcom/mixpanel/android/mpmetrics/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/c;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1062
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/w;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1071
    :goto_0
    return-void

    .line 1065
    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/w;->a:Lcom/mixpanel/android/mpmetrics/r;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/r;->a(Lcom/mixpanel/android/mpmetrics/r;)Lcom/mixpanel/android/mpmetrics/ah;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mixpanel/android/mpmetrics/ah;->a(Ljava/lang/String;)V

    .line 1067
    :try_start_0
    const-string v0, "$android_devices"

    new-instance v1, Lorg/json/JSONArray;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "$union"

    invoke-direct {p0, v0, v2}, Lcom/mixpanel/android/mpmetrics/w;->b(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/w;->a:Lcom/mixpanel/android/mpmetrics/r;

    invoke-static {v1, v0}, Lcom/mixpanel/android/mpmetrics/r;->a(Lcom/mixpanel/android/mpmetrics/r;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "MixpanelAPI"

    const-string v1, "Exception unioning a property"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1068
    :catch_1
    move-exception v0

    .line 1069
    const-string v1, "MixpanelAPI"

    const-string v2, "set push registration id error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 884
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 885
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 886
    const-string v1, "$append"

    invoke-direct {p0, v1, v0}, Lcom/mixpanel/android/mpmetrics/w;->b(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 887
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/w;->a:Lcom/mixpanel/android/mpmetrics/r;

    invoke-static {v1, v0}, Lcom/mixpanel/android/mpmetrics/r;->a(Lcom/mixpanel/android/mpmetrics/r;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :goto_0
    return-void

    .line 888
    :catch_0
    move-exception v0

    .line 889
    const-string v1, "MixpanelAPI"

    const-string v2, "Exception appending a property"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/v;
    .locals 1

    .prologue
    .line 1120
    if-nez p1, :cond_0

    .line 1121
    const/4 v0, 0x0

    .line 1123
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/mixpanel/android/mpmetrics/ab;

    invoke-direct {v0, p0, p1}, Lcom/mixpanel/android/mpmetrics/ab;-><init>(Lcom/mixpanel/android/mpmetrics/w;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/w;->a:Lcom/mixpanel/android/mpmetrics/r;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/r;->a(Lcom/mixpanel/android/mpmetrics/r;)Lcom/mixpanel/android/mpmetrics/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/ah;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
