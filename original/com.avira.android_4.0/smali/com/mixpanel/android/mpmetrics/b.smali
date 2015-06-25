.class final Lcom/mixpanel/android/mpmetrics/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lorg/json/JSONObject;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/b;->a:Ljava/lang/String;

    .line 177
    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/b;->b:Lorg/json/JSONObject;

    .line 178
    iput-object p3, p0, Lcom/mixpanel/android/mpmetrics/b;->c:Ljava/lang/String;

    .line 179
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/b;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/b;->c:Ljava/lang/String;

    return-object v0
.end method
