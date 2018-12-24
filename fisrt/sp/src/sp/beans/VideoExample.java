package sp.beans;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class VideoExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public VideoExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andVideoIdIsNull() {
            addCriterion("video_id is null");
            return (Criteria) this;
        }

        public Criteria andVideoIdIsNotNull() {
            addCriterion("video_id is not null");
            return (Criteria) this;
        }

        public Criteria andVideoIdEqualTo(Integer value) {
            addCriterion("video_id =", value, "videoId");
            return (Criteria) this;
        }

        public Criteria andVideoIdNotEqualTo(Integer value) {
            addCriterion("video_id <>", value, "videoId");
            return (Criteria) this;
        }

        public Criteria andVideoIdGreaterThan(Integer value) {
            addCriterion("video_id >", value, "videoId");
            return (Criteria) this;
        }

        public Criteria andVideoIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("video_id >=", value, "videoId");
            return (Criteria) this;
        }

        public Criteria andVideoIdLessThan(Integer value) {
            addCriterion("video_id <", value, "videoId");
            return (Criteria) this;
        }

        public Criteria andVideoIdLessThanOrEqualTo(Integer value) {
            addCriterion("video_id <=", value, "videoId");
            return (Criteria) this;
        }

        public Criteria andVideoIdIn(List<Integer> values) {
            addCriterion("video_id in", values, "videoId");
            return (Criteria) this;
        }

        public Criteria andVideoIdNotIn(List<Integer> values) {
            addCriterion("video_id not in", values, "videoId");
            return (Criteria) this;
        }

        public Criteria andVideoIdBetween(Integer value1, Integer value2) {
            addCriterion("video_id between", value1, value2, "videoId");
            return (Criteria) this;
        }

        public Criteria andVideoIdNotBetween(Integer value1, Integer value2) {
            addCriterion("video_id not between", value1, value2, "videoId");
            return (Criteria) this;
        }

        public Criteria andVideoNameIsNull() {
            addCriterion("video_name is null");
            return (Criteria) this;
        }

        public Criteria andVideoNameIsNotNull() {
            addCriterion("video_name is not null");
            return (Criteria) this;
        }

        public Criteria andVideoNameEqualTo(String value) {
            addCriterion("video_name =", value, "videoName");
            return (Criteria) this;
        }

        public Criteria andVideoNameNotEqualTo(String value) {
            addCriterion("video_name <>", value, "videoName");
            return (Criteria) this;
        }

        public Criteria andVideoNameGreaterThan(String value) {
            addCriterion("video_name >", value, "videoName");
            return (Criteria) this;
        }

        public Criteria andVideoNameGreaterThanOrEqualTo(String value) {
            addCriterion("video_name >=", value, "videoName");
            return (Criteria) this;
        }

        public Criteria andVideoNameLessThan(String value) {
            addCriterion("video_name <", value, "videoName");
            return (Criteria) this;
        }

        public Criteria andVideoNameLessThanOrEqualTo(String value) {
            addCriterion("video_name <=", value, "videoName");
            return (Criteria) this;
        }

        public Criteria andVideoNameLike(String value) {
            addCriterion("video_name like", value, "videoName");
            return (Criteria) this;
        }

        public Criteria andVideoNameNotLike(String value) {
            addCriterion("video_name not like", value, "videoName");
            return (Criteria) this;
        }

        public Criteria andVideoNameIn(List<String> values) {
            addCriterion("video_name in", values, "videoName");
            return (Criteria) this;
        }

        public Criteria andVideoNameNotIn(List<String> values) {
            addCriterion("video_name not in", values, "videoName");
            return (Criteria) this;
        }

        public Criteria andVideoNameBetween(String value1, String value2) {
            addCriterion("video_name between", value1, value2, "videoName");
            return (Criteria) this;
        }

        public Criteria andVideoNameNotBetween(String value1, String value2) {
            addCriterion("video_name not between", value1, value2, "videoName");
            return (Criteria) this;
        }

        public Criteria andVideoCountIsNull() {
            addCriterion("video_count is null");
            return (Criteria) this;
        }

        public Criteria andVideoCountIsNotNull() {
            addCriterion("video_count is not null");
            return (Criteria) this;
        }

        public Criteria andVideoCountEqualTo(Integer value) {
            addCriterion("video_count =", value, "videoCount");
            return (Criteria) this;
        }

        public Criteria andVideoCountNotEqualTo(Integer value) {
            addCriterion("video_count <>", value, "videoCount");
            return (Criteria) this;
        }

        public Criteria andVideoCountGreaterThan(Integer value) {
            addCriterion("video_count >", value, "videoCount");
            return (Criteria) this;
        }

        public Criteria andVideoCountGreaterThanOrEqualTo(Integer value) {
            addCriterion("video_count >=", value, "videoCount");
            return (Criteria) this;
        }

        public Criteria andVideoCountLessThan(Integer value) {
            addCriterion("video_count <", value, "videoCount");
            return (Criteria) this;
        }

        public Criteria andVideoCountLessThanOrEqualTo(Integer value) {
            addCriterion("video_count <=", value, "videoCount");
            return (Criteria) this;
        }

        public Criteria andVideoCountIn(List<Integer> values) {
            addCriterion("video_count in", values, "videoCount");
            return (Criteria) this;
        }

        public Criteria andVideoCountNotIn(List<Integer> values) {
            addCriterion("video_count not in", values, "videoCount");
            return (Criteria) this;
        }

        public Criteria andVideoCountBetween(Integer value1, Integer value2) {
            addCriterion("video_count between", value1, value2, "videoCount");
            return (Criteria) this;
        }

        public Criteria andVideoCountNotBetween(Integer value1, Integer value2) {
            addCriterion("video_count not between", value1, value2, "videoCount");
            return (Criteria) this;
        }

        public Criteria andVideoStatementIsNull() {
            addCriterion("video_statement is null");
            return (Criteria) this;
        }

        public Criteria andVideoStatementIsNotNull() {
            addCriterion("video_statement is not null");
            return (Criteria) this;
        }

        public Criteria andVideoStatementEqualTo(Integer value) {
            addCriterion("video_statement =", value, "videoStatement");
            return (Criteria) this;
        }

        public Criteria andVideoStatementNotEqualTo(Integer value) {
            addCriterion("video_statement <>", value, "videoStatement");
            return (Criteria) this;
        }

        public Criteria andVideoStatementGreaterThan(Integer value) {
            addCriterion("video_statement >", value, "videoStatement");
            return (Criteria) this;
        }

        public Criteria andVideoStatementGreaterThanOrEqualTo(Integer value) {
            addCriterion("video_statement >=", value, "videoStatement");
            return (Criteria) this;
        }

        public Criteria andVideoStatementLessThan(Integer value) {
            addCriterion("video_statement <", value, "videoStatement");
            return (Criteria) this;
        }

        public Criteria andVideoStatementLessThanOrEqualTo(Integer value) {
            addCriterion("video_statement <=", value, "videoStatement");
            return (Criteria) this;
        }

        public Criteria andVideoStatementIn(List<Integer> values) {
            addCriterion("video_statement in", values, "videoStatement");
            return (Criteria) this;
        }

        public Criteria andVideoStatementNotIn(List<Integer> values) {
            addCriterion("video_statement not in", values, "videoStatement");
            return (Criteria) this;
        }

        public Criteria andVideoStatementBetween(Integer value1, Integer value2) {
            addCriterion("video_statement between", value1, value2, "videoStatement");
            return (Criteria) this;
        }

        public Criteria andVideoStatementNotBetween(Integer value1, Integer value2) {
            addCriterion("video_statement not between", value1, value2, "videoStatement");
            return (Criteria) this;
        }

        public Criteria andVideoDateIsNull() {
            addCriterion("video_date is null");
            return (Criteria) this;
        }

        public Criteria andVideoDateIsNotNull() {
            addCriterion("video_date is not null");
            return (Criteria) this;
        }

        public Criteria andVideoDateEqualTo(Date value) {
            addCriterion("video_date =", value, "videoDate");
            return (Criteria) this;
        }

        public Criteria andVideoDateNotEqualTo(Date value) {
            addCriterion("video_date <>", value, "videoDate");
            return (Criteria) this;
        }

        public Criteria andVideoDateGreaterThan(Date value) {
            addCriterion("video_date >", value, "videoDate");
            return (Criteria) this;
        }

        public Criteria andVideoDateGreaterThanOrEqualTo(Date value) {
            addCriterion("video_date >=", value, "videoDate");
            return (Criteria) this;
        }

        public Criteria andVideoDateLessThan(Date value) {
            addCriterion("video_date <", value, "videoDate");
            return (Criteria) this;
        }

        public Criteria andVideoDateLessThanOrEqualTo(Date value) {
            addCriterion("video_date <=", value, "videoDate");
            return (Criteria) this;
        }

        public Criteria andVideoDateIn(List<Date> values) {
            addCriterion("video_date in", values, "videoDate");
            return (Criteria) this;
        }

        public Criteria andVideoDateNotIn(List<Date> values) {
            addCriterion("video_date not in", values, "videoDate");
            return (Criteria) this;
        }

        public Criteria andVideoDateBetween(Date value1, Date value2) {
            addCriterion("video_date between", value1, value2, "videoDate");
            return (Criteria) this;
        }

        public Criteria andVideoDateNotBetween(Date value1, Date value2) {
            addCriterion("video_date not between", value1, value2, "videoDate");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNull() {
            addCriterion("user_id is null");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNotNull() {
            addCriterion("user_id is not null");
            return (Criteria) this;
        }

        public Criteria andUserIdEqualTo(Integer value) {
            addCriterion("user_id =", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotEqualTo(Integer value) {
            addCriterion("user_id <>", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThan(Integer value) {
            addCriterion("user_id >", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("user_id >=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThan(Integer value) {
            addCriterion("user_id <", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThanOrEqualTo(Integer value) {
            addCriterion("user_id <=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdIn(List<Integer> values) {
            addCriterion("user_id in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotIn(List<Integer> values) {
            addCriterion("user_id not in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdBetween(Integer value1, Integer value2) {
            addCriterion("user_id between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotBetween(Integer value1, Integer value2) {
            addCriterion("user_id not between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andVideokindIdIsNull() {
            addCriterion("videokind_id is null");
            return (Criteria) this;
        }

        public Criteria andVideokindIdIsNotNull() {
            addCriterion("videokind_id is not null");
            return (Criteria) this;
        }

        public Criteria andVideokindIdEqualTo(Integer value) {
            addCriterion("videokind_id =", value, "videokindId");
            return (Criteria) this;
        }

        public Criteria andVideokindIdNotEqualTo(Integer value) {
            addCriterion("videokind_id <>", value, "videokindId");
            return (Criteria) this;
        }

        public Criteria andVideokindIdGreaterThan(Integer value) {
            addCriterion("videokind_id >", value, "videokindId");
            return (Criteria) this;
        }

        public Criteria andVideokindIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("videokind_id >=", value, "videokindId");
            return (Criteria) this;
        }

        public Criteria andVideokindIdLessThan(Integer value) {
            addCriterion("videokind_id <", value, "videokindId");
            return (Criteria) this;
        }

        public Criteria andVideokindIdLessThanOrEqualTo(Integer value) {
            addCriterion("videokind_id <=", value, "videokindId");
            return (Criteria) this;
        }

        public Criteria andVideokindIdIn(List<Integer> values) {
            addCriterion("videokind_id in", values, "videokindId");
            return (Criteria) this;
        }

        public Criteria andVideokindIdNotIn(List<Integer> values) {
            addCriterion("videokind_id not in", values, "videokindId");
            return (Criteria) this;
        }

        public Criteria andVideokindIdBetween(Integer value1, Integer value2) {
            addCriterion("videokind_id between", value1, value2, "videokindId");
            return (Criteria) this;
        }

        public Criteria andVideokindIdNotBetween(Integer value1, Integer value2) {
            addCriterion("videokind_id not between", value1, value2, "videokindId");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}