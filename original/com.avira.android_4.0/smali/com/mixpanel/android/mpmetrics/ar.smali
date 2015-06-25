.class public final Lcom/mixpanel/android/mpmetrics/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mixpanel/android/mpmetrics/ap;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mixpanel/android/mpmetrics/ap;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/ar;->a:Lcom/mixpanel/android/mpmetrics/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const-string v0, "id"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mixpanel/android/mpmetrics/ar;->b:I

    .line 104
    const-string v0, "type"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/ar;->c:Ljava/lang/String;

    .line 105
    const-string v0, "prompt"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/ar;->d:Ljava/lang/String;

    .line 107
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 108
    const-string v1, "extra_data"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    const-string v1, "extra_data"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 110
    const-string v2, "$choices"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    const-string v0, "$choices"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 113
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 114
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 118
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/ar;->e:Ljava/util/List;

    .line 119
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/ar;->d()Lcom/mixpanel/android/mpmetrics/as;

    move-result-object v0

    sget-object v1, Lcom/mixpanel/android/mpmetrics/as;->MULTIPLE_CHOICE:Lcom/mixpanel/android/mpmetrics/as;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/ar;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 120
    new-instance v0, Lcom/mixpanel/android/mpmetrics/aq;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Question is multiple choice but has no answers:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mixpanel/android/mpmetrics/aq;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Lcom/mixpanel/android/mpmetrics/ap;Lorg/json/JSONObject;B)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/mixpanel/android/mpmetrics/ar;-><init>(Lcom/mixpanel/android/mpmetrics/ap;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/mixpanel/android/mpmetrics/ar;->b:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/ar;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/ar;->e:Ljava/util/List;

    return-object v0
.end method

.method public final d()Lcom/mixpanel/android/mpmetrics/as;
    .locals 2

    .prologue
    .line 137
    sget-object v0, Lcom/mixpanel/android/mpmetrics/as;->MULTIPLE_CHOICE:Lcom/mixpanel/android/mpmetrics/as;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/as;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/ar;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Lcom/mixpanel/android/mpmetrics/as;->MULTIPLE_CHOICE:Lcom/mixpanel/android/mpmetrics/as;

    .line 143
    :goto_0
    return-object v0

    .line 140
    :cond_0
    sget-object v0, Lcom/mixpanel/android/mpmetrics/as;->TEXT:Lcom/mixpanel/android/mpmetrics/as;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/as;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/ar;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    sget-object v0, Lcom/mixpanel/android/mpmetrics/as;->TEXT:Lcom/mixpanel/android/mpmetrics/as;

    goto :goto_0

    .line 143
    :cond_1
    sget-object v0, Lcom/mixpanel/android/mpmetrics/as;->UNKNOWN:Lcom/mixpanel/android/mpmetrics/as;

    goto :goto_0
.end method
